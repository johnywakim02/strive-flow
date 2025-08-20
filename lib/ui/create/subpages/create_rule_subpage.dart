import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:strive_flow/core/colors/app_colors_theme_extension.dart';
import 'package:strive_flow/core/utils/string_extension.dart';
import 'package:strive_flow/domain/models/rule/rule.dart';
import 'package:strive_flow/domain/models/rule/rule_severity.dart';
import 'package:strive_flow/domain/models/rule/rule_type.dart';
import 'package:strive_flow/ui/create/widgets/create_principle_section.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile.dart';

class CreateRuleSubpage extends StatefulWidget {
  const CreateRuleSubpage({super.key});

  @override
  State<CreateRuleSubpage> createState() => _CreateRuleSubpageState();
}

class _CreateRuleSubpageState extends State<CreateRuleSubpage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  late Box<Rule> _ruleBox;

  @override
  void initState() {
    super.initState();
    _ruleBox = Hive.box<Rule>('rules');
  }

  void _addRule() {
    final text = _titleController.text.trim();
    final description = _descriptionController.text.trim();
    final Rule rule = Rule(title: text, description: description,severity: RuleSeverity.hardRule, type: RuleType.selfRule);
    if (text.isNotEmpty) {
      _ruleBox.add(rule);
      _titleController.clear();
      _descriptionController.clear();
      setState(() {});
    }
  }

  Future<void> _deleteRule(int index) async {
    final keyToDelete = _ruleBox.keyAt(index);
    await _ruleBox.delete(keyToDelete);
    setState(() {});
  }

  void Function()? _onLongPress(BuildContext context, int index, List<Rule> rules){
    final int previewWordCount = 5;

    return (){
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Delete Rule?"),
          content: Text('Are you sure you want to delete "${rules[index].title.takeWords(previewWordCount)}"?'),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancel")),
            TextButton(onPressed: (){_deleteRule(index); Navigator.pop(context);}, child: const Text("Delete", style: TextStyle(color: Colors.red))),
          ],
        )
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    final rules = _ruleBox.values.toList();
    final AppColorsThemeExtension colorScheme = Theme.of(context).extension<AppColorsThemeExtension>()!;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: colorScheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: colorScheme.appBarBackgroundColor,
        title: const Text("Rules"),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12.0),
        itemCount: rules.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onLongPress: _onLongPress(context, index, rules),
            child: PrincipleTile(
              title: rules[index].title, 
              description: rules[index].description,
              number: index + 1
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 12.0),
      ),
      floatingActionButton: CreatePrincipleSection(
        titleController: _titleController,
        descriptionController: _descriptionController,
        onAdd: _addRule,
      ),
    );
  }
}

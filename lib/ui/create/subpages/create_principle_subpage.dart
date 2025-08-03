import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:strive_flow/ui/create/widgets/create_principle_section.dart';
import 'package:strive_flow/ui/create/widgets/my_principles_section.dart';

class CreatePrincipleSubpage extends StatefulWidget {
  const CreatePrincipleSubpage({super.key});

  @override
  State<CreatePrincipleSubpage> createState() => _CreatePrincipleSubpageState();
}

class _CreatePrincipleSubpageState extends State<CreatePrincipleSubpage> {
  final TextEditingController _controller = TextEditingController();
  late Box<String> _principleBox;

  @override
  void initState() {
    super.initState();
    _principleBox = Hive.box<String>('principles');
  }

  void _addPrinciple() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      _principleBox.add(text);
      _controller.clear();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final principles = _principleBox.values.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Principle"),
        centerTitle: true,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyPrinciplesSection(principles: principles),
            CreatePrincipleSection(
              controller: _controller,
              onAdd: _addPrinciple,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:strive_flow/domain/models/principle/principle.dart';
import 'package:strive_flow/ui/create/widgets/create_principle_section.dart';
import 'package:strive_flow/ui/create/widgets/my_principles_section.dart';

class CreatePrincipleSubpage extends StatefulWidget {
  const CreatePrincipleSubpage({super.key});

  @override
  State<CreatePrincipleSubpage> createState() => _CreatePrincipleSubpageState();
}

class _CreatePrincipleSubpageState extends State<CreatePrincipleSubpage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  late Box<Principle> _principleBox;

  @override
  void initState() {
    super.initState();
    _principleBox = Hive.box<Principle>('principles');
  }

  void _addPrinciple() {
    final text = _titleController.text.trim();
    final description = _descriptionController.text.trim();
    final Principle principle = Principle(title: text, description: description);
    if (text.isNotEmpty) {
      _principleBox.add(principle);
      _titleController.clear();
      _descriptionController.clear();
      setState(() {});
    }
  }

  Future<void> _deletePrinciple(int index) async {
    final keyToDelete = _principleBox.keyAt(index);
    await _principleBox.delete(keyToDelete);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final principles = _principleBox.values.toList();

    return Scaffold(
      backgroundColor: Color(0xFFF7EEDC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7EEDC),
        title: const Text("Principles"),
        centerTitle: true,
      ),
      body: MyPrinciplesSection(
        principles: principles, 
        onDelete: _deletePrinciple,
      ),
      floatingActionButton: CreatePrincipleSection(
        titleController: _titleController,
        descriptionController: _descriptionController,
        onAdd: _addPrinciple,
      ),
    );
  }
}

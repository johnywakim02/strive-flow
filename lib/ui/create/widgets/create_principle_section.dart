import 'package:flutter/material.dart';

class CreatePrincipleSection extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final VoidCallback onAdd;

  const CreatePrincipleSection({
    super.key,
    required this.titleController,
    required this.descriptionController,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text("Add Principle"),
        onPressed: () => _showAddPrincipleBottomSheet(context),
      ),
    );
  }

  void _showAddPrincipleBottomSheet(BuildContext context){
    showModalBottomSheet( //built in method
      context: context, 
      isScrollControlled: true, // because the bottom sheet has textfields which are scrollable children
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))), // only round the top corners
      builder: (context) {
        final screenHeight = MediaQuery.of(context).size.height;
        final screenWidth = MediaQuery.of(context).size.width;

        return SizedBox(
          height: screenHeight * 0.6,
          width: screenWidth * 0.95,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              spacing: 16,
              children: [
                _buildNewPrincipleText(),
                _buildTitleTextField(),
                _buildDescriptionTextField(),
                _buildActionButtonsRow(context)
              ],
            )
          )
        );
      }
    );
  }

  Widget _buildNewPrincipleText(){
    return const Text(
      "New Principle",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildTitleTextField(){
    return TextField(
      controller: titleController,
      maxLines: 2, // before scrolling
      decoration: const InputDecoration(
        labelText: "Title",
        hintText: "Enter principle title",
        border: OutlineInputBorder(),
        alignLabelWithHint: true,
      ),
    );
  }

  Widget _buildDescriptionTextField(){
    return Expanded(
      child: TextField(
        controller: descriptionController,
        maxLines: 10, // before scrolling
        decoration: const InputDecoration(
          labelText: "Description",
          hintText: "Enter principle description",
          border: OutlineInputBorder(),
          alignLabelWithHint: true,
        ),
      ),
    );
  }

  Widget _buildActionButtonsRow(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 8,
      children: [
        // cancel button
        TextButton(
          onPressed: () {
            titleController.text = "";
            descriptionController.text = "";
            Navigator.of(context).pop();
          },
          child: const Text("Cancel"),
        ),
        // save button
        ElevatedButton(
          onPressed: () {
            final title = titleController.text.trim();
            final description = descriptionController.text.trim();
            if (title.isNotEmpty || description.isNotEmpty) {
              onAdd();
            }
            Navigator.of(context).pop();
          },
          child: const Text("Save"),
        ),
      ],
    );
  }
}

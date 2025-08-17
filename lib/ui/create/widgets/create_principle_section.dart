import 'package:flutter/material.dart';
import 'package:strive_flow/core/colors/app_colors_theme_extension.dart';

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
    final AppColorsThemeExtension colorScheme = Theme.of(context).extension<AppColorsThemeExtension>()!;

    return Align(
      alignment: Alignment.bottomRight,
      child: FloatingActionButton.extended(
        backgroundColor: colorScheme.primaryButtonBackgroundColor,
        foregroundColor: colorScheme.primaryButtonForegroundColor,
        icon: const Icon(Icons.add),
        label: const Text("Add Principle"),
        onPressed: () => _showAddPrincipleBottomSheet(context),
      ),
    );
  }

  void _showAddPrincipleBottomSheet(BuildContext context){
    final AppColorsThemeExtension colorScheme = Theme.of(context).extension<AppColorsThemeExtension>()!;

    showModalBottomSheet( //built in method
      context: context, 
      isScrollControlled: true, // because the bottom sheet has textfields which are scrollable children
      backgroundColor: colorScheme.backgroundColor,
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
                _buildTitleTextField(colorScheme),
                _buildDescriptionTextField(colorScheme),
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

  Widget _buildTitleTextField(AppColorsThemeExtension colorScheme){
    return TextField(
      controller: titleController,
      maxLines: 2, // before scrolling
      decoration: InputDecoration(
        labelText: "Title",
        hintText: "Enter principle title",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0),),
        alignLabelWithHint: true,
        filled: true,
        fillColor: colorScheme.textFieldBackgroundColor,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: colorScheme.textFieldEnabledBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: colorScheme.textFieldFocusedBorderColor, width: 2),
          ),
          labelStyle: TextStyle(color: colorScheme.textFieldLabelColor),
          hintStyle: TextStyle(color: Colors.grey[600]),
      ),
    );
  }

  Widget _buildDescriptionTextField(AppColorsThemeExtension colorScheme){
    return Expanded(
      child: TextField(
        controller: descriptionController,
        maxLines: 10, // before scrolling
        decoration: InputDecoration(
          labelText: "Description",
          hintText: "Enter principle description",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0),),
          alignLabelWithHint: true,
          filled: true,
          fillColor: colorScheme.textFieldBackgroundColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: colorScheme.textFieldEnabledBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: colorScheme.textFieldFocusedBorderColor, width: 2),
          ),
          labelStyle: TextStyle(color: colorScheme.textFieldLabelColor),
          hintStyle: TextStyle(color: Colors.grey[600]),
        ),
      ),
    );
  }

  Widget _buildActionButtonsRow(BuildContext context){
    final AppColorsThemeExtension colorScheme = Theme.of(context).extension<AppColorsThemeExtension>()!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 8,
      children: [
        // cancel button
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: colorScheme.tertiaryButtonForegroundColor, // text color
          ),
          onPressed: () {
            titleController.text = "";
            descriptionController.text = "";
            Navigator.of(context).pop();
          },
          child: const Text("Cancel"),
        ),
        // save button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.primaryButtonBackgroundColor, // background
            foregroundColor: colorScheme.primaryButtonForegroundColor, // text color
          ),
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

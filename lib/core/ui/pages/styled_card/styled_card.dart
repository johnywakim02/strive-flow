import 'package:flutter/material.dart';
import 'package:strive_flow/core/ui/pages/styled_card/styled_card_body.dart';

class StyledCard extends StatelessWidget {
  final String title;
  final String content;
  final String? imagePath;
  final bool initiallyExpanded;
  final VoidCallback? onDelete;

  const StyledCard({
    super.key,
    required this.title,
    required this.content,
    this.imagePath,
    this.initiallyExpanded = false,
    this.onDelete
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: StyledCardBody(title: title, content: content, imagePath: imagePath, initiallyExpanded: initiallyExpanded, onDelete: onDelete),
    );
  }
}







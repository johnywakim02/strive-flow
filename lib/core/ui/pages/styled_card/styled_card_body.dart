import 'package:flutter/material.dart';
import 'package:strive_flow/core/ui/pages/styled_card/styled_card_body_content.dart';
import 'package:strive_flow/core/ui/pages/styled_card/styled_card_body_image.dart';
import 'package:strive_flow/core/ui/pages/styled_card/styled_card_body_title.dart';

class StyledCardBody extends StatelessWidget {
  final String title;
  final String content;
  final String? imagePath;
  final bool initiallyExpanded;
  final VoidCallback? onDelete;

  const StyledCardBody({
    super.key,
    required this.title,
    required this.content,
    required this.imagePath,
    this.initiallyExpanded = false,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpansionTile(
            shape: Border(),
            initiallyExpanded: initiallyExpanded,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: StyledCardBodyTitle(title: title)),
                if (onDelete != null)
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.grey),
                    onPressed: onDelete,
                    tooltip: 'Delete',
                  ),
              ],
            ),
            children: [
              const SizedBox(height: 12),
              StyledCardBodyContent(content: content),
              if (imagePath != null)
                StyledCardBodyImage(imagePath: imagePath),
            ],
          ),
        ],
      ),
    );
  }
}
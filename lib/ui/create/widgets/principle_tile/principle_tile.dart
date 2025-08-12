import 'package:flutter/material.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile_description_text.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile_red_disk.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile_title_text.dart';

class PrincipleTile extends StatelessWidget{
  final String title;
  final String description;

  const PrincipleTile({
    super.key,
    required this.title,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrincipleTileRedDisk(),
                Flexible(child: PrincipleTileTitleText(title: title)),
              ],
            ),
            PrincipleTileDescriptionText(description: description)
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile_description_text.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile_red_disk.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile_red_line.dart';
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
    return Card(
      child: Padding(
        padding: EdgeInsets.all(12), // get some space from the sides
        child: Align(
          alignment: Alignment.centerLeft, // to align text to the left in the column (part 1)
          child: IntrinsicHeight(
            child: Row(
              spacing: 12.0,
              crossAxisAlignment: CrossAxisAlignment.start, // to align text to the left in the column (part 2)
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    PrincipleTileRedDisk(),
                    Expanded(child: PrincipleTileRedLine()),
                    
                  ],
                ),
                Expanded(
                  child: Column(
                    spacing:12.0,
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      PrincipleTileTitleText(title: title), 
                      PrincipleTileDescriptionText(description: description), 
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


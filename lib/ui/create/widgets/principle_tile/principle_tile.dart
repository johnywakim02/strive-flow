import 'package:flutter/material.dart';
import 'package:strive_flow/core/colors/app_colors.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile_description_text.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile_red_disk.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile_red_line.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile_title_text.dart';

class PrincipleTile extends StatefulWidget{
  final String title;
  final String description;

  const PrincipleTile({
    super.key,
    required this.title,
    required this.description
  });

  @override
  State<PrincipleTile> createState() => _PrincipleTileState();
}

class _PrincipleTileState extends State<PrincipleTile> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpanded,
      child: Container(
        padding: EdgeInsets.all(12), 
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.lightButterCream, AppColors.softGoldenPeach], 
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
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
                    if(_isExpanded)
                      Expanded(child: PrincipleTileRedLine()),
                  ],
                ),
                Expanded(
                  child: Column(
                    spacing:12.0,
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      PrincipleTileTitleText(title: widget.title), 
                      if(_isExpanded)
                        PrincipleTileDescriptionText(description: widget.description), 
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


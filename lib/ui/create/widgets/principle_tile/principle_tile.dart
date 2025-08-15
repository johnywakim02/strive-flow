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
  final int baseDurationMs = 2;
  late int _animationDuration;
  final int _animationDurationDisappearingRedLine = 100;
  bool _isExpanded = false;
  bool _showRedLine = false;
  

  void _toggleExpanded() {
    // if state was expanded
    if(_isExpanded){
      // make state not expanded which entails to stop showing red line after the animation duration
      setState(() {
        _isExpanded = false;
      });
      // after a delay of the animation duration, if the state is still 'not expanded', change the _showRedLine state variable to false
      Future.delayed(Duration(milliseconds: _animationDuration), (){
        if(!_isExpanded){
          setState(() {
              _showRedLine = false;
          });
        }
      });
    }
    // if state was 'not expanded'
    else{
      //make state expanded which entails showing red line
      setState(() {
        _isExpanded = true;
        _showRedLine = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _animationDuration = (widget.description.length * baseDurationMs).clamp(200, 2000);
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
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: _animationDurationDisappearingRedLine),
                        child: _showRedLine
                            ? PrincipleTileRedLine(key: ValueKey('line'))
                            : SizedBox.shrink(key: ValueKey('empty')),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    spacing:12.0,
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      PrincipleTileTitleText(title: widget.title), 
                      AnimatedSwitcher(
                        duration: Duration(milliseconds: _animationDuration),
                        transitionBuilder: (Widget child, Animation<double> animation){
                          final size = SizeTransition(
                            sizeFactor: animation,
                            axisAlignment: -1,
                            child: child
                          );
                          return ClipRect(child: size);
                        },
                        child: _isExpanded
                            ? PrincipleTileDescriptionText(key: ValueKey('desc'), description: widget.description,)
                            : SizedBox.shrink(key: ValueKey('empty')),
                      ),
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


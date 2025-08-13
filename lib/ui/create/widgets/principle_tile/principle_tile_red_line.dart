import 'package:flutter/material.dart';

class PrincipleTileRedLine extends StatelessWidget {
  const PrincipleTileRedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(5, 0),
      child: Container(
        width: 3,
        color: Colors.red,
      ),
    );
  }
}


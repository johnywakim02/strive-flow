import 'package:flutter/material.dart';
import 'package:strive_flow/core/colors/app_colors.dart';

class PrincipleTileRedLine extends StatelessWidget {
  const PrincipleTileRedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(9, 0),
      child: Container(
        width: 3,
        color: AppColors.redOrange,
      ),
    );
  }
}


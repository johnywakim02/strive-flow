import 'package:flutter/material.dart';

class PrincipleTileRedDisk extends StatelessWidget {
  const PrincipleTileRedDisk({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14,
      height: 14,
      margin: const EdgeInsets.only(top: 5),
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}



import 'package:flutter/material.dart';

class PrincipleTileDescriptionText extends StatelessWidget {
  const PrincipleTileDescriptionText({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black54,
      ),
    );
  }
}
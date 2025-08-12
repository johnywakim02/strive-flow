import 'package:flutter/material.dart';

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
      child: Column(
        children: [
          Text(title),
          Text(description)
        ],
      ),
    );
  }
}
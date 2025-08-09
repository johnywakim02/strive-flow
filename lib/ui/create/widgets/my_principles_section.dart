import 'package:flutter/material.dart';
import 'package:strive_flow/core/ui/pages/styled_card/styled_card.dart';
import 'package:strive_flow/domain/models/principle/principle.dart';

class MyPrinciplesSection extends StatelessWidget {
  final List<Principle> principles;
  final void Function(int index) onDelete;

  const MyPrinciplesSection({super.key, required this.principles, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "My Principles:",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemCount: principles.length,
            itemBuilder: (context, index) {
              return StyledCard(
                title: principles[index].title, 
                content: principles[index].description,
                onDelete: (){onDelete(index);},
              );
            },
          ),
        ),
      ],
    );
  }
}

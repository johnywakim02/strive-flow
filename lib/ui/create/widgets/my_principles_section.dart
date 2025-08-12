import 'package:flutter/material.dart';
import 'package:strive_flow/domain/models/principle/principle.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile.dart';

class MyPrinciplesSection extends StatelessWidget {
  final List<Principle> principles;
  final void Function(int index) onDelete;

  const MyPrinciplesSection({super.key, required this.principles, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: principles.length,
      itemBuilder: (context, index) {
        return PrincipleTile(
          title: principles[index].title, 
          description: principles[index].description,
        );
      },
    );
  }
}

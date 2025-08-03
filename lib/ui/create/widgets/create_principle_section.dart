import 'package:flutter/material.dart';

class CreatePrincipleSection extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAdd;

  const CreatePrincipleSection({
    super.key,
    required this.controller,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Add Principle:", style: TextStyle(fontSize: 16)),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: "Enter a new principle",
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: onAdd,
            )
          ],
        ),
      ],
    );
  }
}

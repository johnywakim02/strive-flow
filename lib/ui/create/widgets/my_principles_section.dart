import 'package:flutter/material.dart';

class MyPrinciplesSection extends StatelessWidget {
  final List<String> principles;
  final void Function(int index) onDelete;

  const MyPrinciplesSection({super.key, required this.principles, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
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
                return ListTile(
                  leading: const Icon(Icons.star),
                  title: Text(principles[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => onDelete(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

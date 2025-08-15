import 'package:flutter/material.dart';
import 'package:strive_flow/core/utils/string_extension.dart';
import 'package:strive_flow/domain/models/principle/principle.dart';
import 'package:strive_flow/ui/create/widgets/principle_tile/principle_tile.dart';

class MyPrinciplesSection extends StatelessWidget {
  final List<Principle> principles;
  final void Function(int index) onDelete;

  const MyPrinciplesSection({super.key, required this.principles, required this.onDelete});

  void Function()? _onLongPress(BuildContext context, int index){
    final int previewWordCount = 5;

    return (){
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Delete Principle?"),
          content: Text('Are you sure you want to delete "${principles[index].title.takeWords(previewWordCount)}"?'),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancel")),
            TextButton(onPressed: (){onDelete(index); Navigator.pop(context);}, child: const Text("Delete", style: TextStyle(color: Colors.red))),
          ],
        )
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(12.0),
      itemCount: principles.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onLongPress: _onLongPress(context, index),
          child: PrincipleTile(
            title: principles[index].title, 
            description: principles[index].description,
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 12.0),
    );
  }
}

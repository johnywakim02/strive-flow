import 'package:flutter/material.dart';

class CreatePrincipleSubpage extends StatelessWidget{
  const CreatePrincipleSubpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Principle"),
        centerTitle: true,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("My Principles:"),
            Divider(),
            SizedBox(height: 20),
            Text("Add Principle"),
            TextField()
          ],
        ),
      )
    );
  }
}
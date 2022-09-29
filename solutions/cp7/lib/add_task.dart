import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  String _description = 'Testing';
  AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("What's your new task?")),
      body: TextFormField(
        onChanged: (value) => _description = value,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop<String>(context, _description);
        },
        child: Icon(Icons.check),
      ),
    );
  }
}

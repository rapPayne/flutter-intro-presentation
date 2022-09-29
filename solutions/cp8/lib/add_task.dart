import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  String _description = 'Testing';
  AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("What's your new task?")),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: TextFormField(
          onChanged: (value) => _description = value,
          decoration: InputDecoration(
            helperText: 'Enter the task you want to do',
            labelText: 'To do description',
          ),
        ),
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

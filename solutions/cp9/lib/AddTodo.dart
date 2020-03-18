import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  String _todoDescription;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a new todo"),
      ),
      body: _body,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          if (_todoDescription.isNotEmpty)
            Navigator.pop(context, _todoDescription);
        },
      ),
    );
  }

  Widget get _body {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          helperText: 'Enter the task you want to do',
          labelText: 'To do description',
        ),
        onChanged: (val) {
          _todoDescription = val;
        },
      ),
    );
  }
}

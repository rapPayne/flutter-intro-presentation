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
          Navigator.pop(context, _todoDescription);
        },
      ),
    );
  }

  Widget get _body {
    return Container(
      child: TextField(
        onChanged: (val) {
          _todoDescription = val;
        },
      ),
    );
  }
}

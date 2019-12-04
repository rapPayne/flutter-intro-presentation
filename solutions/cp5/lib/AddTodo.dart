import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add a new todo"),),
      body: Text("I'm AddTodo"),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {},
        ),
    );
  }
}
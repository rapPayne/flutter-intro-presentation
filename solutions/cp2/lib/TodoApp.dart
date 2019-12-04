import 'package:flutter/material.dart';
import 'Todo.dart';

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<Todo> _todos = [
    new Todo()..id=1..completed=false..description='Buy groceries',
    new Todo()..id=2..completed=false..description='Workout',
    new Todo()..id=3..completed=false..description='Wash the car',
    new Todo()..id=4..completed=false..description='Get gifts for ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stuff I got to do'),),
      body: ListView(
        children: _todos.map((todo) => Text(todo.description)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {print("Pressed");}
      ),
    );
  }
}
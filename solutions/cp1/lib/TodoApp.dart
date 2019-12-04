import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stuff I got to do'),),
      body: Text("hello world"),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {print("Pressed");}
      ),
    );
  }
}
import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text('Hello world'),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('pressed'),
        child: const Icon(Icons.add),
      ),
    );
  }
}

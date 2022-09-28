import 'package:flutter/material.dart';
import 'task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> _tasks = [
    Task()
      ..id = 0
      ..completed = false
      ..description = 'Sign up for future course',
    Task()
      ..id = 1
      ..completed = false
      ..description = 'Do something',
    Task()
      ..id = 2
      ..completed = false
      ..description = 'Do another thing',
    Task()
      ..id = 3
      ..completed = false
      ..description = 'Do a 3rd thing',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stuff I need to do today.')),
      body: ListView(
          children: _tasks
              .map((task) => ListTile(
                    title: Text(task.description),
                    leading: Icon(Icons.check_box),
                  ))
              .toList()),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: () => print('Pressed')),
    );
  }
}

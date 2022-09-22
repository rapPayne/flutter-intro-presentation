import 'package:flutter/material.dart';
import 'package:task_app/Task.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> _tasks = [
    Task()
      ..id = 1
      ..completed = false
      ..description = 'Sign up for future course',
    Task()
      ..id = 2
      ..completed = false
      ..description = 'Task2',
    Task()
      ..id = 3
      ..completed = false
      ..description = 'Task3',
    Task()
      ..id = 4
      ..completed = false
      ..description = 'Task4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Things I need to do today'),
      ),
      body: ListView(
        children: _tasks.map((task) => Text(task.description)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('pressed'),
        child: const Icon(Icons.add),
      ),
    );
  }
}

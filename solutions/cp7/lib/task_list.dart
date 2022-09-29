import 'package:flutter/material.dart';
import 'package:task_app/add_task.dart';
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
                    leading: task.completed
                        ? Icon(Icons.check_box)
                        : Icon(Icons.check_box_outline_blank),
                    onTap: () =>
                        setState(() => task.completed = !task.completed),
                  ))
              .toList()),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () async {
            String desc = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => AddTask(),
                ));
            Task task = Task()
              ..id = getNextId()
              ..completed = false
              ..description = desc;
            setState(() => _tasks.add(task));
            print('Got $desc');
          }),
    );
  }

  int getNextId() {
    _tasks.sort((a, b) => a.id.compareTo(b.id));
    return _tasks.last.id + 1;
  }
}

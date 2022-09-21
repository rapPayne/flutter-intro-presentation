import 'package:flutter/material.dart';

class TaskApp extends StatefulWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  State<TaskApp> createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
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

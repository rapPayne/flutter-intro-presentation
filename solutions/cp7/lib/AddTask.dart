import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  AddTask({Key? key}) : super(key: key);
  String _description = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add a new task')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          TextField(
            onChanged: (value) => _description = value,
            decoration: InputDecoration(
              labelText: 'Task description',
              helperText: 'Workout, Go to store, etc',
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        onPressed: () {
          print('pressed the FAB $_description');
          Navigator.pop(context, _description);
        },
      ),
    );
  }
}

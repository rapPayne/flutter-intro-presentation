import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'AddTodo.dart';
import 'Todo.dart';

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<Todo> _todos = [];
  SharedPreferences? _prefs;

  _TodoAppState() {
    SharedPreferences.getInstance()
        .then((prefs) => _prefs = prefs)
        .then((prefs) {
      setState(() => _todos = readTodos());
    }).catchError((error) {
      print("Error finding shared preferences.");
      print(error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stuff I got to do'),
      ),
      body: _body,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          String description = await Navigator.push(
              context, MaterialPageRoute(builder: (ctx) => AddTodo()));
          if (description != null)
            setState(() {
              _todos.add(Todo()
                ..id = getNextId()
                ..completed = false
                ..description = description);
              saveTodos();
            });
        },
      ),
    );
  }

  Widget get _body {
    return ListView(
      children: _todos.map((todo) {
        Icon icon = todo.completed ?? false
            ? Icon(Icons.check_box)
            : Icon(Icons.check_box_outline_blank);
        todo.description = todo.description ?? "";
        return ListTile(
          leading: icon,
          title: Text(todo.description ?? ""),
          onTap: () {
            setState(() {
              todo.completed = !(todo.completed ?? false);
              saveTodos();
            });
          },
        );
      }).toList(),
    );
  }

  int getNextId() {
    if (_todos.isEmpty) return 1;
    _todos.sort((a, b) => a.id ?? 0.compareTo(b.id ?? 0));
    return _todos.last.id ?? 0 + 1;
  }

  void saveTodos() {
    print("saving");
    String prefsString = Todo.toJsonArray(_todos);
    _prefs?.setString('todos', prefsString).then((val) {
      print('Successfully saved: $val');
    }).catchError((err) {
      print('Failed saving: $err');
    });
  }

  List<Todo> readTodos() {
    String todosString = (_prefs?.getString("todos")) ?? "";
    return Todo.fromJsonArray(todosString);
  }
}

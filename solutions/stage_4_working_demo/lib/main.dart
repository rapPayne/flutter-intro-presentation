import 'package:flutter/material.dart';
import './Todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task list',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> _todos = [];
  _TodoListState() {
    _todos = [
      Todo()..id=1..completed=false..description="Get milk",
      Todo()..id=2..completed=false..description="See the new movie",
      Todo()..id=3..completed=false..description="Buy some presents for the people in my secret santa giveaway - George, Jin, Kayla, LaTrecia, Gomez",
      ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stuff to do"),),
      body: Todos(_todos, () => setState((){}),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("pressed");
        }
      ),
    );
  }
}

class Todos extends StatelessWidget {
  final List<Todo> todos;
  final Function rerender;
  Todos(this.todos, this.rerender);
  @override
  Widget build(BuildContext context) {
    print(todos);
    return ListView(
      children: todos.map((todo) => ListTile(
        leading: drawCheckbox(todo.completed),
        title: Text(todo.description),
        onTap: () {
          todo.completed = !todo.completed;
          print('${todo.description} is ${todo.completed ? "done" : "pending"}');
          rerender();
        }
        )).toList()
    );
  }

  Icon drawCheckbox(bool completed) {
    return completed ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank);
  }
}

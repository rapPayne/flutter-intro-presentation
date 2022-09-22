# Checkpoint 5

We add navigation to the app.

## Steps
1. Create a new widget AddToDo.dart that says "I'm AddTodo()" and a FAB
1. When the user taps the FAB, navigate to the AddTodo() widget
```dart
Navigator.push(context, MaterialPageRoute(builder: (ctx) => AddTodo()));
```
Add ability to add a new Todo. Return it from the AddTodo widget.

1. Add a pop back to TodoApp
```dart
onPressed: () {
  Navigator.pop(context, _todoDescription);
},
```
1. On return from AddTodo widget, save the description.
```dart
onPressed: () async {
  String description = await Navigator.push(context, MaterialPageRoute(builder: (ctx) => AddTodo()));
  print(description);
```

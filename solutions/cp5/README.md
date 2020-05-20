# Checkpoint 5

We add navigation to the app.

## Steps
1. Create a new widget AddToDo.dart that says "I'm AddTodo()" and a FAB
1. When the user taps the FAB, navigate to the AddTodo() widget
```dart
Navigator.push(context, MaterialPageRoute(builder: (ctx) => AddTodo()));
```
1. 
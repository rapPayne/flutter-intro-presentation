# Checkpoint 7

Add the new Todo on return from AddTodo

# Steps
1. in TodoApp(), add a new Todo
```dart
onPressed: () async {
  String description = await Navigator.push(
      context, MaterialPageRoute(builder: (ctx) => AddTodo()));
  setState(() {
    _todos.add(Todo()..id = getNextId()..completed = false..description = description);
  });
```
1. Add getNextId()
```dart
int getNextId() {
  _todos.sort((a, b) => a.id.compareTo(b.id));
  return _todos.last.id + 1;
}
```
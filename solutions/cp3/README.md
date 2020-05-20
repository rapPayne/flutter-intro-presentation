# Checkpoint 3

## Steps
1. Extract the Scaffold's body into a get method called _body.
1. In there, add a ListView:
```dart
Widget get _body {
  return ListView(
    children: _todos.map((todo) => ListTile(
      leading: Icon(Icons.check_box),
      title: Text(todo.description),
      )
      ).toList(),
  );
}
```

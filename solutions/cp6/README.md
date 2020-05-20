# Checkpoint 6

Add ability to add a new Todo. Return it from the AddTodo widget.

## Steps
1. In AddTodo(), extract the body into a get Widget
```dart
Widget get _body {
  return Container(
    child: TextField(
      onChanged: (val) {
        _todoDescription = val;
      },
    ),
  );
}
```
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
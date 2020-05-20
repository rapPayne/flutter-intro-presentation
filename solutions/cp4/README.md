# Checkpoint 4

## Steps
1. Add to the _todos.map()_
```dart
Icon icon = todo.completed ? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank);
```
1. Add an onTap to the ListTile()
```dart
onTap: () {
  setState(() { todo.completed = ! todo.completed;});
},
```
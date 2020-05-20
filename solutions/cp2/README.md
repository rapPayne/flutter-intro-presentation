# Checkpoint 2

## Steps
1. Add a Todo business class with id, description, and completed
1. Add some Todos in the State widget.
'''dart
List<Todo> _todos = [
  new Todo()..id=1..completed=false..description='Buy groceries',
  new Todo()..id=2..completed=false..description='Workout',
  new Todo()..id=3..completed=false..description='Wash the car',
  new Todo()..id=4..completed=false..description='Get gifts for ',
];
'''
1. Add a ListView() to the body:
'''dart
body: ListView(
  children: _todos.map((todo) => Text(todo.description)).toList(),
),
'''

import 'dart:convert';

class Todo {
  int id;
  String description;
  bool completed;

  static String toJsonArray(List<Todo> todos) {
    List<Map<String, dynamic>> arrayOfMaps = todos
        .map((todo) => {
              "id": todo.id,
              "description": todo.description,
              "completed": todo.completed,
            })
        .toList();
    return json.encode(arrayOfMaps);
  }

  static List<Todo> fromJsonArray(String jsonString) {
    List<dynamic> arrayOfDynamics = json.decode(jsonString).toList();  
    List<Todo> arrayOfTodos = arrayOfDynamics.map((map) => Todo()
      ..id = map["id"]
      ..completed = map["completed"]
      ..description = map["description"]).toList();
    return arrayOfTodos;
  }
}

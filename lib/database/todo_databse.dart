import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  // reference to the todoBox
  final _box = Hive.box('todoBox');

  void createInitialData() {
    todoList = [
      {
        'taskName': 'Learn Flutter',
        'isDone': false,
      },
      {
        'taskName': 'Learn Dart',
        'isDone': false,
      },
    ];
  }

  void loadTodoList() {
    todoList = _box.get('todoList');
  }

  void updateTodoList() {
    _box.put('todoList', todoList);
  }
}

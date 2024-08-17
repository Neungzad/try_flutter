import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:try_flutter/database/todo_databse.dart';
import 'package:try_flutter/utils/dialog_box.dart';
import 'package:try_flutter/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  final _box = Hive.box('todoBox');
  TodoDatabase db = TodoDatabase();

  @override
  void initState() {
    if (_box.get('todoList').isEmpty) {
      db.createInitialData();
    } else {
      db.loadTodoList();
    }
    super.initState();
  }

  void addNewTodo() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => Navigator.pop(context),
          );
        });
  }

  void saveNewTask() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        db.todoList.add({
          'taskName': _controller.text,
          'isDone': false,
        });
      });
      _controller.clear();
      Navigator.pop(context);
      db.updateTodoList();
    }
  }

  void updateTask(int index, bool? value) {
    setState(() {
      db.todoList[index]['isDone'] = value;
    });
    db.updateTodoList();
  }

  void deleteTask(int index) {
    setState(() {
      db.todoList.removeAt(index);
    });
    db.updateTodoList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('TODO'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNewTodo,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(24),
        itemCount: db.todoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: db.todoList[index]['taskName'],
            isDone: db.todoList[index]['isDone'],
            onTodoTileTap: (checked) {
              updateTask(index, checked);
            },
            onTodoTileDelete: () {
              deleteTask(index);
            },
          );
        },
      ),
    );
  }
}

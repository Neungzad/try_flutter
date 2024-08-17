import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool isDone;
  final Function(bool?)? onTodoTileTap;
  final Function() onTodoTileDelete;

  const TodoTile(
      {super.key,
      required this.taskName,
      required this.isDone,
      required this.onTodoTileTap,
      required this.onTodoTileDelete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (BuildContext context) {
                onTodoTileDelete();
              },
              icon: Icons.delete,
              backgroundColor: const Color.fromARGB(255, 225, 96, 94),
              foregroundColor: Colors.white,
              label: 'Delete',
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.yellow[600],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              // checkbox
              Checkbox(
                value: isDone,
                onChanged: onTodoTileTap,
                checkColor: Colors.black,
              ),

              // text
              Text(
                taskName,
                style: TextStyle(
                  color: isDone ? Colors.grey : Colors.black,
                  decoration: isDone ? TextDecoration.lineThrough : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

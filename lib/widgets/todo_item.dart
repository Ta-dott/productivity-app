import 'package:flutter/material.dart';
import '../model/todo.dart';
import '../constants/colors.dart';

// StatelessWidget to display a single ToDo item
class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final Function(ToDo) onToDoChanged;
  final Function(String) onDeleteItem;
  final Function(ToDo) onEditItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
    required this.onEditItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // Toggle the done status of the ToDo item
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText ?? '',
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text(
          'Due: ${todo.dueDate != null ? todo.dueDate!.toLocal().toString().split(' ')[0] : 'No date'}',
          style: TextStyle(
            fontSize: 14,
            color: tdGrey,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit, color: tdGrey),
              onPressed: () {
                // Edit the ToDo item
                onEditItem(todo);
              },
            ),
            IconButton(
              icon: Icon(Icons.delete, color: tdRed),
              onPressed: () {
                // Delete the ToDo item
                onDeleteItem(todo.id ?? '');
              },
            ),
          ],
        ),
      ),
    );
  }
}

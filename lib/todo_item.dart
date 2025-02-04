import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/todo_list_content.dart';

class TodoItem extends StatefulWidget {
  final Todo Allitems;
  final onToDoChanged;

  final onDeleteItem;

  const TodoItem(
      {Key? key,
      required this.Allitems,
      required this.onToDoChanged,
      required this.onDeleteItem})
      : super(key: key);

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          widget.onToDoChanged(widget.Allitems);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          widget.Allitems.isDone
              ? Icons.check_box
              : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          widget.Allitems.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            decoration:
                widget.Allitems.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            icon: Icon(
              Icons.delete,
              size: 20,
            ),
            onPressed: () {
             widget.onDeleteItem(widget.Allitems.id);
            },
          ),
        ),
      ),
    );
  }
}

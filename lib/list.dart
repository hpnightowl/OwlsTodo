import 'package:flutter/material.dart';
import "package:owlstask/data.dart";

typedef ToggleTodoCallback = void Function(Todo, bool);

class TodoList extends StatelessWidget {
  final ToggleTodoCallback onTodoToggle;
  final List<Todo> todos;

  TodoList({@required this.todos,this.onTodoToggle});
  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];
    return CheckboxListTile(
      value: todo.isDone,
      title: Text(todo.title),
      onChanged: (bool isChecked) {
        onTodoToggle(todo, isChecked);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: todos.length,
    );
  }
}

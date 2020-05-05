import 'package:flutter/material.dart';
import 'package:owlstask/todo_list.dart';
void main() => runApp(MyTasks());


class MyTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TodoList(),
      ),
    );
  }
}

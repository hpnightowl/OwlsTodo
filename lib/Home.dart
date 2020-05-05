import 'package:flutter/material.dart';
import 'package:owlstask/todo_data.dart';
import 'package:owlstask/dialog.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Todo> todos = [];
  TextEditingController controller = new TextEditingController();

  _addTodo() async {
    final todo = await showDialog<Todo>(
        context: context,
        builder: (BuildContext context) {
          return NewTodoDialog();
        }
    );
    _toggleTodo(Todo todo, bool isChecked) {
      todo.isDone = isChecked;
      setState(() {
        todo.isDone = isChecked;
      });
    }
    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Todo List'),
          ),
          body: ListView.builder(
            itemBuilder: _buildItem,
            itemCount: todos.length,
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _addTodo,
          )
      );
    }
  }
}
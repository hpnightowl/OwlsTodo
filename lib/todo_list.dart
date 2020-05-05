import 'package:flutter/material.dart';
import 'package:owlstask/todo_data.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
     List<Todo> todos = [];
     TextEditingController controller = new TextEditingController();

     _addTodo() {
            showDialog(
                  context: context,
                  builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('New todo'),
                  content: TextField(controller: controller),
                              actions: <Widget>[
                            FlatButton(
                               child: Icon(Icons.cancel),
                                   onPressed: () {
                                     Navigator.of(context).pop();
                                   },
                                 ),
                                 FlatButton(
                                   child: Icon(Icons.add),
                                   onPressed: () {
                                     setState(() {
                                        final todo = new Todo(title: controller.value.text);
                                        todos.add(todo);
                                        controller.clear();
                                        Navigator.of(context).pop();
                                       },
                                     );
                                   },
                                 ),
                              ],
                    );
              },
            );
          }
     _toggleTodo(Todo todo, bool isChecked) {
           todo.isDone = isChecked;
           setState(() {
                    todo.isDone = isChecked;
                  });
         }

  Widget _buildItem(BuildContext context, int index) {
            final todo = todos[index];

            return CheckboxListTile(
              value: todo.isDone,
              title: Text(todo.title),
              onChanged: (bool isChecked) {
                         _toggleTodo(todo, isChecked);
                       },
            );
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

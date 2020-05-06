import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:owlstask/home.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyTasks());
}

class MyTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      home: TodoListScreen(),
    );
  }
}

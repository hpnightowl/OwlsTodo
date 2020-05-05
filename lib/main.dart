import 'package:flutter/material.dart';
import 'package:owlstask/Home.dart';
void main() => runApp(MyTasks());


class MyTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
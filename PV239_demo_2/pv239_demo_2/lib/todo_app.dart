import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pv239_demo_2/todo_page.dart';

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoPage(),
    );
  }
}
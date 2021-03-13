import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pv239_demo_2/create_new_page.dart';
import 'package:pv239_demo_2/model/todo_item_model.dart';
import 'package:pv239_demo_2/todo_row.dart';

class TodoPage extends StatefulWidget {

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<TodoItemModel> _todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        actions: [IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _createPressed(context)
        )],),
      body: ListView(
        children: _todos.map((t) => TodoRow(name: t.name, isDone: t.isDone,)).toList(),
      )
    );
  }

  void _createPressed(BuildContext context) async {
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewPage()));
    this.setState(() {
      _todos.add(TodoItemModel(result));
    });
  }
}
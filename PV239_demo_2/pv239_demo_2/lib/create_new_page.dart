import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateNewPage extends StatefulWidget {

  const CreateNewPage({Key key}) : super(key: key);

  @override
  _CreateNewPageState createState() => _CreateNewPageState();
}

class _CreateNewPageState extends State<CreateNewPage> {
  String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Todo'),),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(onChanged: (text) => this.setState(() {
              this.text = text;
            }),),
            MaterialButton(
              child: Text('Add'),
              onPressed: () => Navigator.pop(context, text)
            )
          ],
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TodoRow extends StatefulWidget {
  final String name;
  final bool isDone;

  const TodoRow({Key key, this.name, this.isDone}) : assert(name != null), assert(isDone != null), super(key: key);

  @override
  _TodoRowState createState() => _TodoRowState(isDone: isDone);
}

class _TodoRowState extends State<TodoRow> {
  bool _isDone;

  _TodoRowState({ bool isDone }): super() {
    _isDone = isDone;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Checkbox(value: _isDone, onChanged: (newValue) {
            this.setState(() {
              _isDone = newValue;
            });
          }),
          Text(widget.name),
        ],
      )
    );
  }
}
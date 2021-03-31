import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/control_panel.dart';
import 'package:flutter_app/display_panel.dart';

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo 4'),),
      body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ControlPanel(),
            DisplayPanel()
          ],
        ),
    );
  }
}
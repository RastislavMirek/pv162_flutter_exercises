import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PV162 Exercise 1'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Hello world!'),
              Text('Hello world 2!')
            ],
          )
      ),
    );
  }
}

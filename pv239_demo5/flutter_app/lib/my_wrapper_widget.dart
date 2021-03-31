import 'package:flutter/material.dart';

class TitledWrapperExample extends StatelessWidget {
  final Widget child;
  final String title;

  const TitledWrapperExample({Key key, this.child, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        child
      ],
    );
  }
}

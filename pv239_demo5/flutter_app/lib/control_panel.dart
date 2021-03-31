import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/model/panel_model.dart';
import 'package:provider/provider.dart';

class ControlPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        // color: Theme.of(context).accentColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Consumer<PanelModel>(
            builder: (context, model, _) => Column(
              children: [
                Row(
                  children: [
                    Text("Show second card"),
                    CupertinoSwitch(value: model.panelShown, onChanged: (bool value) {
                      model.setPanelShown(value);
                    },),
                  ],
                ),
                TextField(onSubmitted: (text) {
                  model.add(text);
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
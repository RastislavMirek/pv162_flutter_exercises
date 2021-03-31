import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/bloc/panel_cubit.dart';
import 'package:flutter_app/model/panel_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ControlPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final panelCubit = context.read<PanelCubit>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        // color: Theme.of(context).accentColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: BlocBuilder<PanelCubit, PanelModel>(
            builder: (context, model) => Column(
              children: [
                Row(
                  children: [
                    Text("Show second card"),
                    CupertinoSwitch(value: model.panelShown, onChanged: (bool value) {
                      panelCubit.setShown(value);
                    },),
                  ],
                ),
                TextField(onSubmitted: (text) => panelCubit.addText(text)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
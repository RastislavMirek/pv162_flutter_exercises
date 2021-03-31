import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/bloc/panel_cubit.dart';
import 'package:flutter_app/model/panel_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayPanel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: NewWidget(),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: BlocBuilder<PanelCubit, PanelModel>(
        builder: (context, model) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: model.panelShown ? model.texts.map((t) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(t),
            )).toList() : [],
          ),
        ),
      ),
    );
  }
}
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:flutter_app/model/panel_model.dart';

class PanelCubit extends Cubit<PanelModel> {
  PanelCubit() : super(PanelModel([], true));

  void setShown(bool shown) {
    emit(PanelModel(state.texts, shown));
  }

  void addText(String newText) {
    final newPanelModel = PanelModel(UnmodifiableListView([...state.texts, newText]), state.panelShown);
    emit(newPanelModel);
  }
}

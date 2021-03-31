import 'dart:collection';
import 'package:flutter/cupertino.dart';

class PanelModel extends ChangeNotifier {
  final List<String> _texts = [];
  bool _panelShown = true;

  UnmodifiableListView<String> get items => UnmodifiableListView(_texts);

  bool get panelShown => _panelShown;
  // example of get property
  String get fullText => _texts.reduce((value, element) => value + element);

  void add(String text) {
    _texts.add(text);
    notifyListeners(); // This call tells the widgets that are listening to this model to rebuild
  }

  void setPanelShown(bool show){
    _panelShown = show;
    notifyListeners();
  }
}
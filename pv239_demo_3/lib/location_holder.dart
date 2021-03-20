import 'package:flutter/material.dart';

class LocationHolder extends InheritedWidget {
  final String location = 'Brno';

  const LocationHolder({
    Key key,
    @required Widget child,
  })
      : assert(child != null),
        super(key: key, child: child);

  static LocationHolder of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LocationHolder>();
  }

  @override
  bool updateShouldNotify(LocationHolder old) {
    return location != old.location;
  }
}
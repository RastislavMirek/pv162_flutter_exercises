import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pv239_demo_3/location_holder.dart';
import 'package:pv239_demo_3/show_location_page.dart';

class LocationApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location Demo',
      theme: ThemeData(
        textTheme: TextTheme(bodyText1: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LocationHolder(child: ShowLocationPage(),),
    );
  }
}
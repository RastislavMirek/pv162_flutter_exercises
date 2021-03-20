import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pv239_demo_3/location_holder.dart';
import 'package:geolocator/geolocator.dart';

class ShowLocationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final location = LocationHolder.of(context).location;
    final gpsStream = Geolocator.getPositionStream();
    return Scaffold(
      appBar: AppBar(title: Text('Location', style: TextStyle(fontSize: 30),),),
      body: Container(
        child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('asset/image/globe.png', width: 150, height: 150,),
                SizedBox(height: 20,),
                Text(location, style: Theme.of(context).textTheme.headline1),
                StreamBuilder<String>(
                    initialData: '',
                    stream: gpsStream.map((position) => position.toString()),
                    builder: (context, positionStringSnapshot) => Text(positionStringSnapshot.data),
                )
              ],
            )
        ),
      )
    );
  }
}

void streamControllerExample() {
  final sc = StreamController<List<String>>();
  sc.add([]);
  try {
    sc.stream.listen((event) {});
  } finally {
    sc.close();
  }
}

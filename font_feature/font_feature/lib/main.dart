import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('font feature'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'CONTOH 01 (tanpa apapun)',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'CONTOH 02 (Small Caps)',
                  style: TextStyle(
                      fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
                ),
                Text(
                  'CONTOH 1/2 (Small Caps & frac)',
                  style: TextStyle(fontSize: 20, fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable('frac')
                  ]),
                ),
                Text(
                  'CONTOH Cardo 19 (Tanpa Apapun)',
                  style: TextStyle(fontSize: 20, fontFamily: 'Cardo'),
                ),
                Text(
                  'CONTOH Cardo 19 (oldstyle)',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Cardo',
                      fontFeatures: [(FontFeature.oldstyleFigures())]),
                ),
                Text(
                  'CONTOH Cardo 19 (oldstyle)',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Cardo',
                      fontFeatures: [(FontFeature.oldstyleFigures())]),
                ),
                Text(
                  'Gabriela (Default)',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Gabriola',
                  ),
                ),
                Text(
                  'Gabriela (style set nomor 5)',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Gabriola',
                      fontFeatures: [(FontFeature.stylisticSet(5))]),
                ),
              ]),
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> MUFLIH = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LIST VIEW'),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                    child: Text('TAMBAH DATA'),
                    onPressed: () {
                      setState(() {
                        MUFLIH.add(Text(
                          'DATA KE-' + counter.toString(),
                          style: TextStyle(fontSize: 10 + counter.toDouble()),
                        ));
                        counter++;
                      });
                    }),
                RaisedButton(
                    child: Text('HAPUS DATA'),
                    onPressed: () {
                      setState(() {
                        MUFLIH.removeLast();
                        counter--;
                      });
                    })
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: MUFLIH,
            )
          ],
        ),
      ),
    );
  }
}

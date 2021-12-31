import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = 'INI ADALAH TEXT';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ANONYMOUS METHOD'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message.toString()),
              RaisedButton(
                  child: Text('TEKAN SAYA'),
                  onPressed: () {
                    setState(() {
                      message = 'TOMBOL SUDAH DI TEKAN';
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TEXT STYLE'),
        ),
        body: Center(
          child: Text(
            'MUH MUFLIH BACHTIAR',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 15,
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
                decorationThickness: 10,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}

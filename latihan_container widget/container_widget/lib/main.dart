import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('latihan container'),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
          padding: EdgeInsets.only(bottom: 20, top: 20),
          color: Colors.red,
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.amber, Colors.black])),
          ),
        ),
      ),
    );
  }
}

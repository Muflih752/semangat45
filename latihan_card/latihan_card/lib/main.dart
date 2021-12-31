import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              builcard(Icons.account_box, 'Account Box'),
              builcard(Icons.adb, 'serangga android')
            ],
          ),
        ),
      ),
    );
  }

  Card builcard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(10),
              child: Icon(
                iconData,
                color: Colors.green,
              )),
          Text(text)
        ],
      ),
    );
  }
}

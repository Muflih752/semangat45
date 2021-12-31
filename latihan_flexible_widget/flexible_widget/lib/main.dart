import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flexible widget'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.red,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.green,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.purple,
                      )),
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.red,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}

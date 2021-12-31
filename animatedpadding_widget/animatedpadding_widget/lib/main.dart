import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double mypadding = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ANIMATED PADDING'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(mypadding),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                mypadding = 20;
                              });
                            },
                            child: Container(
                              color: Colors.red,
                            ),
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(mypadding),
                          child: Container(
                            color: Colors.green,
                          ),
                        )),
                  ],
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(mypadding),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                mypadding = 20;
                              });
                            },
                            child: Container(
                              color: Colors.blue,
                            ),
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(mypadding),
                          child: Container(
                            color: Colors.yellow,
                          ),
                        )),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

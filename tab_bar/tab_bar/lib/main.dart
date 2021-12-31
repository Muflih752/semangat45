import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('contoh tab bar'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.comment),
                  text: 'comment',
                ),
                Tab(
                  icon: Icon(Icons.computer),
                  text: 'computer',
                ),
                Tab(
                  text: 'news',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text('tab 1'),
              ),
              Center(
                child: Text('tab 2'),
              ),
              Center(
                child: Text('tab 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('IMAGE WIDGET'),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 200,
            child: Image(
              image: AssetImage('images/facebook.jpg'),
              fit: BoxFit.cover,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}

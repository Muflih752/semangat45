import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ROW DAN COLOMN'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'MUFLIH',
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),
            Text('MUFLIH'),
            Text('MUFLIH 3'),
            Row(
              children: <Widget>[
                Text('MUFLIH 4'),
                Text('MUFLIH'),
                Text('MUFLIH')
              ],
            )
          ],
        ),
      ),
    );
  }
}

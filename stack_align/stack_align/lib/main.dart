import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('stack align'),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.amber,
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.red,
                          ))
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.red,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black,
                          ))
                    ],
                  ),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text('MUH MUFLIH BACHTIAR',
                      style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
            Align(
              alignment: Alignment(0.9, 0.9),
              child: RaisedButton(
                  child: Text(
                    'tombolku',
                  ),
                  color: Colors.orange,
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}

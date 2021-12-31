import 'package:flutter/material.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LATIHAN MEDIA QUERI'),
        ),
        // mengikuti lebar layar hp
        // if else
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generatecontainers,
              )
            : Row(
                children: generatecontainers,
              ));
  }

// <widget> di extract methotd mengembalikan list widget, jika layar potrait media query akan row
  List<Widget> get generatecontainers {
    return <Widget>[
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    ];
  }
}

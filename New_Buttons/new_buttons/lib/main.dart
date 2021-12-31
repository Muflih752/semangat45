import 'package:flutter/material.dart';

void main() => runApp(NewButtons());

class NewButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('New Buttons'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                // raisedButton diganti
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange, onPrimary: Colors.white),
                // cara pertama
                //ButtonStyle(
                //backgroundColor: MaterialStateProperty.all(Colors.orange),
                //foregroundColor: MaterialStateProperty.all(Colors.white),
                //),
                child: Text('A Raised Button'),
                onPressed: () {
                  print('Pressed raised button');
                },
              ),
              TextButton(
                // flatButton diganntikan dengan textButton untuk versi terbaru
                //textColor: Colors.blue,
                child: Text('A Flat Button'),
                style: TextButton.styleFrom(
                    primary: Colors.orange), // tidak ada onprymari(latar depan)
                onPressed: () {
                  print('Pressed flat button');
                },
              ),
              OutlinedButton(
                // outlineButtun digannti
                //untuk outlineButton
                //borderSide: BorderSide(color: Colors.blue),
                //textColor: Colors.blue,
                style: OutlinedButton.styleFrom(
                    primary: Colors.orange,
                    side: BorderSide(color: Colors.black)),
                child: Text('An Outline Button'),
                onPressed: () {
                  print('Pressed outline button');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

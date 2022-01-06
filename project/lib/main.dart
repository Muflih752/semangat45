import 'package:flutter/material.dart';
import 'package:project/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // untuk menjawab peertanyaan
  var questionIndex = 0;
  //untuk mengubungkan tombol
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color?',
      'what\'s your favorite animal?',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Firts App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(
                //anonymous function (fungsi anonim) ketika hanya memanggil dari tempat lain
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2')),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer 3');
                }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './quis.dart';
import './result.dart';

//void main() {
//  runApp(MyApp());
//}
void main() => runApp(MyApp());

// widget stateles data internal, stateful internal dan external
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// untuk menghubungkan ke class pertama tambahkan <MyApp>, kmudian createstate diaatas
class _MyAppState extends State<MyApp> {
  //const questions = [ error... mengatasi
  //static const question = [
  final _questions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'what\'s your faforite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'what\'s your faforite instruktor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];
  var _questionIndex = 0;
  // fungsi menghubungkan onpressed
  void _AnswerQuestion() {
    // membuat widget baru ketika pertanyaan habis
    // benar atau salah
    //var aBool = true;
    //aBool = false;
    // >
    // ==
    //!=
    //<= //>=

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    //print('Answer chosen!');
    print(_questionIndex);
    // membuat widget setelah klik tombol 3 kali maka kesalahan tidak ada
    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('not more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    // list di dart
    // const = jika anda thu nilai2 tidak pernah berubah maka buatlah
    // seluruuh menjadi const, sehingga varibel dn dafrtar
    // dilindungi dari perubahan.

    // dipindah kemembangun
    //const questions = [
    // list atau struktur data
    //{
    //'questionText': 'what\'s your favorite color?',
    //'answers': ['Black', 'Red', 'Green', 'White'],
    //},
    //{
    //'questionText': 'what\'s your faforite animal?',
    //'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    //},
    //{
    //'questionText': 'what\'s your faforite instruktor?',
    //'answers': ['Max', 'Max', 'Max', 'Max'],
    //},
    //];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Firts App'),
        ),
        // membuat widget setelah klik tombol 3 kali maka kesalahan tidak ada
        body: _questionIndex < _questions.length
            ? Quis(
                answerQuestion: _AnswerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            // dibawah ini dipindah ke widget quis menjadi widget
            //Column(
            //  children: [
            //    //Text(questions.elementAt(0)),//jika indeks nya 2 maka error krn 0=1,2=3 di array
            //    //cara kedua
            //    //Text(questions[0]),
            //    Question(
            //      questions[_questionIndex]['questionText'] as String,
            //    ),
            //    ...(questions[_questionIndex]['answers'] as List<String>)
            //        .map((answer) {
            //      return Answer(_AnswerQuestion, answer);
            //    }).toList()
            //  ],
            // membuat widget setelah klik tombol 3 kali maka kesalahan tidak ada
            //)
            : Result(),
      ),
    );
  }
}

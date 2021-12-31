import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TEXTFIELD DECORATION'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.lightBlue[50],
                    filled: true,
                    icon: Icon(
                      Icons.adb,
                    ),
                    // sufix dibelakang
                    prefix: Container(
                      width: 5,
                      height: 5,
                      color: Colors.red,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    //prefixText: 'nim',
                    //prefixStyle: TextStyle(
                    //   color: Colors.blue, fontWeight: FontWeight.bold),
                    labelText: 'nama lengkap',
                    hintText: 'nama mu nert',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                maxLength: 10,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}

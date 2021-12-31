import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GRADIENT OPACITY'),
        ),
        body: Center(
          child: Center(
            child: ShaderMask(
              shaderCallback: (regtangle) {
                return LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)
                    .createShader(
                        Rect.fromLTRB(0, 0, regtangle.width, regtangle.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image(
                  width: 300,
                  image: NetworkImage(
                      'https://www.kabarbintang.id/wp-content/uploads/2021/06/cover-senja.jpeg')),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CUSTOM PATH'),
        ),
        body: Center(
          child: ClipPath(
            clipper: MyClipper(),
            child: Image(
              width: 300,
              image: NetworkImage(
                  'https://assets.kompasiana.com/statics/files/2014/03/1395084361116252989_300x400.jpg?t=o&v=325'),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.75, size.width, size.height);
    path.lineTo(size.width, 0);
    //path.conicTo(x1, y1, x2, y2, w)
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

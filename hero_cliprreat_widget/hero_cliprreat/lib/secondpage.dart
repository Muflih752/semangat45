import 'package:flutter/material.dart';

void main() => runApp(SecondPage());

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'LATIHAN HERO ANIMATION',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://assets.promediateknologi.com/crop/0x0:0x0/750x500/photo/ayojogjakarta/images/post/articles/2020/06/01/39515/tugu-jogja.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

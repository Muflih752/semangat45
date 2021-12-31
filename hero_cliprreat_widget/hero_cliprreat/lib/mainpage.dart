import 'package:flutter/material.dart';
import 'package:hero_cliprreat/secondpage.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'LATIHAN HERO ANIMATION',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
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

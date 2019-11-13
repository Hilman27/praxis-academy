//import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        child :Hero(
          tag: 'imageHero',
          child: Image(image: AssetImage('images/pic1.jpg'),
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
        //child: Image(image: AssetImage('images/pic1.jpg'),
        //),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child :Hero(
            tag: 'imageHero',
            child: Image(image: AssetImage('images/pic1.jpg'),
            ),
          ),
          
        ),
      ),
    );
  }
}



//Future<String> loadAsset() async {
//  return await rootBundle.load('images/pic1.png');
//}
import 'package:flutter/material.dart';
import 'package:hari5/internationalisation.dart';

void main() {
  
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Demo();//HomePage();//MyAppbg();
  }
}
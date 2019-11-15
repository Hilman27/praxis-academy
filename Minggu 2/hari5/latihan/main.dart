import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:hari5/silverCollapse.dart';
import 'package:hari5/silverList.dart';
import 'package:hari5/silverGrid.dart';

void main() {
  
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SilverListMyApp();
  }
}


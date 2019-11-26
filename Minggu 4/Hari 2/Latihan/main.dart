import 'package:flutter/material.dart';
//import 'package:colortest/color.dart';
import 'package:colortest/urlLauncher.dart';

void main() {
   runApp(MyApp());
 }

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: DemoPage(),
     );
   }
 }
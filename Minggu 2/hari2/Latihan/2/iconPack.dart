import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Sidebar();
  }
}

class Sidebar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {    
    return Container(
      decoration: BoxDecoration(color: Colors.white),      
      child: Row(
        children: <Widget>[
          SideBarTest(),
          Container(
            child: Text("Test_Horizontal",style: TextStyle(fontSize: 21),),
          ),
        ],
        ),
    );
  }  
}

class SideBarTest extends StatelessWidget {
  SideBarTest({this.title});
  // Fields in a Widget subclass are always marked "final".
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,             
      decoration: BoxDecoration(color: Colors.blue[500]),      
      child: Column(      
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,  
        children: <Widget>[  
          Container(
            child : Text("Vertical_1",style: TextStyle(fontSize: 30)),
          ),
          Container(
            child : Text("Vertical_2",style: TextStyle(fontSize: 30)),
          ),
          Container(
            //child : Text("Vertical_3",style: TextStyle(fontSize: 30)),
            child : iconPacks,
          ),
        ],
      ),
    );
  }
}

var iconPacks = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.white),
    Icon(Icons.star, color: Colors.white),
  ],
);
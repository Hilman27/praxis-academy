import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: Sidebar(),
  ));
}

class Sidebar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {    
    return Material(
      child: Row(
        children: <Widget>[
          SideBarTest(),
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
      width: 10.0, // in logical pixels
      //padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Column(
        // <Widget> is the type of items in the list.
        children: <Widget>[          
          IconButton(
            icon: Icon(Icons.phone_android),
            tooltip: 'Android',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
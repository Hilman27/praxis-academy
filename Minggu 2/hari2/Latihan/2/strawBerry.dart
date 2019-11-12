import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:hari2/asset/Strwaberry.PNG';

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return StrawBerry();
  }
}

class StrawBerry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uji Coba Stroberi'),        
      ),
      body: Row(
        children: <Widget>[
          Column(                        
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                width: 200.0,
                child: Text("Strawberry Pavalova"),
              ),
              Container(
                width: 200.0,        
                padding: EdgeInsets.all(20),
                //decoration: BoxDecoration(color: Colors.black),        
                
                child: Text("Pavalova is a Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),
              ),
              Container(
                width: 200.0,
                padding: EdgeInsets.all(20),
                child: iconPacks,
              ),
            ],

          ),
          StrawBerryImageStandIN(),
        ],
      ),
    );
  }

}

class StrawBerryImageStandIN extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,      
      height: 500,
      decoration: BoxDecoration(color: Colors.green),
      //child: Text("Anggap ini \n gambar Stroberi",textAlign: TextAlign.center,),
      child: Image.asset('asset/Strwaberry.PNG'),
    );
  }
}

var iconPacks = Row(
  mainAxisSize: MainAxisSize.min,  
  children: [
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),    
    Text("170 Review",style: (TextStyle(fontSize: 15))),
  ],
);
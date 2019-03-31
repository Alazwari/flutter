import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.home),title: Text("Stateless Widget App"),backgroundColor: Colors.indigoAccent,),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          MyCard(Icons.keyboard, "Learn"),
          MyCard(Icons.adb, "Flutter"),
          MyCard(Icons.date_range, "In a month"),
        ],
      ),
    );
  }
}


// Card Class
Card MyCard(IconData icon, txt){
  return Card(
    shape: RoundedRectangleBorder(),
    child: Padding(
    padding: const EdgeInsets.all(30.0),
    child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    Icon(icon, size: 30,),
    Text(txt, style: TextStyle(fontSize: 30),)
    ],
    ),
    ),
    );
}
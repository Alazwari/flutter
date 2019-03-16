import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Image.asset("img/logo.png",fit: BoxFit.fitWidth,),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.edit), onPressed: null,disabledColor: Colors.white,),
        IconButton(icon: Icon(Icons.email), onPressed: null,disabledColor: Colors.white,),
      ],),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
        BottomNavigationBarItem(icon: Icon(Icons.star_border), title: Text("Favorite")),
        BottomNavigationBarItem(icon: Icon(Icons.attach_money), title: Text("Order")),
      ]),
      body: Center(
        child: Container(
          child: Image.asset("img/logo.png"),
        ),
      ),
      
    );
  }
}

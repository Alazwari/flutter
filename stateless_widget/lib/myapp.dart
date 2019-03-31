import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add, color: Colors.white,),backgroundColor: Colors.indigoAccent,),
      appBar: AppBar(leading: Icon(Icons.home),title: Text("Stateless Widget App"),backgroundColor: Colors.indigoAccent,),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          MyCard(Icons.keyboard, "Learn"),
          MyCard(Icons.adb, "Flutter"),
          MyCard(Icons.date_range, "In a month"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(title: Text("Home"),icon: Icon(Icons.home)),
        BottomNavigationBarItem(title: Text("Time"),icon: Icon(Icons.access_alarm)),
        BottomNavigationBarItem(title: Text("Keyboard"),icon: Icon(Icons.keyboard)),
      ]),
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
    Icon(icon, size: 40,color: Colors.indigoAccent,),
    Text(txt, style: TextStyle(fontSize: 30),)
    ],
    ),
    ),
    );
}
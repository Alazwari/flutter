import 'package:flutter/material.dart';


class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  int money = 14000;
  void incraeseMoney(){
//    money += 1;
    setState(() {
      money+=100;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.monetization_on,color: Colors.black,),centerTitle: true,title: Text("Make It Rain",style: TextStyle(color: Colors.black),),backgroundColor: Colors.amber,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[Icon(Icons.monetization_on,size: 35,color: Colors.amber,),Text("Get Rich!",style: TextStyle(fontSize: 30),), Icon(Icons.monetization_on,size: 35,color: Colors.amber,)],),
          Text("\$${money.toString()}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: money > 15000? Colors.red:Colors.black),),
          FlatButton(onPressed: (){incraeseMoney();}, child: Text("Let It Rain",style: TextStyle(fontSize: 30,),),color: Colors.amber,shape: StadiumBorder(),padding: EdgeInsets.fromLTRB(50, 10, 50, 10),)
        ],),
      ),
    );
  }
}

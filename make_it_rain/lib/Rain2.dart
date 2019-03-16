import 'package:flutter/material.dart';

class Rain2 extends StatefulWidget {
  @override
  _Rain2State createState() => _Rain2State();
}

class _Rain2State extends State<Rain2> {
  var money = 14000;
  inMoney(){
    setState(() {
      money+=100;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Make It Rain"),leading:Image.asset("img/money.png"),backgroundColor: Colors.deepOrange,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("Get Reach!",style: TextStyle(fontSize: 30)),
            Column(
              children: <Widget>[
                Image.asset("img/money.png"),
                Text("\$${money}",style: TextStyle(fontSize: 30,color: money < 15000? Colors.black:Colors.red),),
              ],
            ),
            FlatButton(onPressed: inMoney,child: Text("Let It Rain",style: TextStyle(fontSize: 30),),color: Colors.deepOrange,shape: StadiumBorder(),padding: EdgeInsets.all(35),),
          ],
        ),
      ),
    );
  }
}

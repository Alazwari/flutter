import 'package:flutter/material.dart';


class Rain extends StatefulWidget {
  @override
  _RainState createState() => _RainState();
}

class _RainState extends State<Rain> {
  var flos = 14000;
  Color flosColor = Colors.black;
  inn(){
    setState(() {
      flos = flos+100;
      if(flos > 14500){
        flosColor = Colors.pink;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make It Rain",textDirection: TextDirection.ltr,),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("Get Reach!", textDirection: TextDirection.ltr,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),),
            Text("\$${flos.toString()}", textDirection: TextDirection.ltr,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0,color: flosColor),),
//            InkWell(child: myButton(flos),onTap: ()=>{
//              inn()
//            },),
          FlatButton(onPressed: inn,child: Text("Let It Rain",style: TextStyle(fontSize: 30),),textColor: Colors.white,color: Colors.lightGreen,padding: EdgeInsets.all(20),shape: StadiumBorder()),
          ],
        ),
      ),
    );
  }
}



///////////////////
class myButton extends StatelessWidget {
  var flos;
  myButton(this.flos);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        var x = SnackBar(content: Text("\$${flos.toString()}"),backgroundColor: Colors.lightGreen,duration: Duration(milliseconds: 800),);
        Scaffold.of(context).showSnackBar(x);
        flos++;
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(color: Colors.lightGreen),
        child: Text("Let It Rain",textDirection: TextDirection.ltr,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
      ),
    );
  }
}

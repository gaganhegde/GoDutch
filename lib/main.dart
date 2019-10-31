import 'package:flutter/material.dart';
import 'package:trialomgno/Screen1.dart';
import 'package:trialomgno/Screen2.dart';
import 'package:trialomgno/Screen3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "DUTCH",
    home: loginimplementation(),
    );
  }
}


class loginimplementation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length:4,
      child: Scaffold(
        appBar: AppBar(title: Text("DUTCH",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),backgroundColor: Colors.orange,
        bottom: TabBar(
          indicatorColor: Colors.green,
          labelColor: Colors.green,
          unselectedLabelColor: Colors.black,
          tabs:[
            Tab(icon: Icon(Icons.attach_money),text: "TRANSANCTIONS",),
            Tab(icon:Icon(Icons.people_outline),text:"GROUPS",),
            Tab(icon:Icon(Icons.schedule),text:"RECORDS"),
          ]
        ),
        ),
        body: TabBarView(
          children: <Widget>[
            Screen1(),
            Screen3(),
            Screen2(),
          ],
        ),
      ),
    );
  }

}
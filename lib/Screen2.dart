import "package:flutter/material.dart";
import 'package:flutter_slidable/flutter_slidable.dart';


class Screen2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen2imp();
  }
}

class Screen2imp extends State<Screen2>
{

  List usernames =["Parthil","Sagar","Chidu","Patrick"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     title:"hey",
     home: Scaffold(body: ListView.builder(
      itemCount: usernames.length,
      itemBuilder:(context,index)=>
     Slidable(
       delegate: SlidableDrawerDelegate(),
       actionExtentRatio: 0.25,
       child: Container(
         color: Colors.white,
    child: new ListTile(
      leading: new CircleAvatar(
        backgroundColor: Colors.indigoAccent,
        child: new Text('add'),
        foregroundColor: Colors.white,
      ),
      title: new Text(' '+ usernames[index].toString()),
      
    ),
  ),
  actions: <Widget>[
    new IconSlideAction(
      caption: 'Archive',
      color: Colors.blue,
      icon: Icons.archive,
      onTap: () => null,
    ),
    new IconSlideAction(
      caption: 'Share',
      color: Colors.indigo,
      icon: Icons.share,
      onTap: () => null,
    ),
  ],
  secondaryActions: <Widget>[
    new IconSlideAction(
      caption: 'More',
      color: Colors.black45,
      icon: Icons.more_horiz,
      onTap: () => null,
    ),
    new IconSlideAction(
      caption: 'Delete',
      color: Colors.red,
      icon: Icons.delete,
      onTap: () => null,
    ),
  ],
)
       ),

       ),
   );
     
       
  }

}




 
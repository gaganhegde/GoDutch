import "package:flutter/material.dart";
import 'package:swipedetector/swipedetector.dart';


class Screen1 extends StatefulWidget{
   @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen1state();
  }
}

class Screen1state extends State<Screen1>{

Map<String,int> friends = <String,int>{
  "Parthil":87,"Sagar":25,"Chidu":-50,"patrick":-200,
};

List usernames =["Parthil","Sagar","Chidu","Patrick"];
List amountvalues =[87,25,-50,-200];
List pictures =["assets/person1.jpg","assets/person2.jpg","assets/person3.jpg","assets/person4.jpg"];
String name;
int amount;
int index =0;

   





  @override
  Widget build(BuildContext context) {
    double heightScreen =MediaQuery.of(context).size.height;
     void PeopleYouOwe()
{
  setState(() {
      if(index==0)
      {
        index = 0;
        print(index);
      }
      else{
        index = index -1;
        print(index);
      }
    });
  
// index =(index == 0)?0:index++;

}

void PeopleOweYou()
{
  print("Swiped Down");
  setState(() {
    if(index == usernames.length-1)
    {
      index = usernames.length-1;
      print(index);
    }
    else{
      index = index+1;
      print(index);
    }

      
    });

}




    // TODO: implement build
    return MaterialApp(title:"Hey",
    home:
    Scaffold(body: SwipeDetector(child:
    Container(child:
    Stack(
      fit: StackFit.expand,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.asset(pictures[index],fit:BoxFit.cover,color:Colors.black87,colorBlendMode: BlendMode.darken,),
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          
          children: <Widget>[
            SizedBox(width: double.infinity,
            height: 30,
            child: DecoratedBox(child: Text("OWES.",style: TextStyle(fontSize: 20,color: Colors.green,)),
              decoration: BoxDecoration(color: Colors.yellow),
            ),
            
            ),
            SizedBox(width: double.infinity,
            height:20),
            Text(usernames[index],style: TextStyle(color: Colors.green.withOpacity(0.5),fontSize: 30,fontWeight: FontWeight.bold)),
            SizedBox(height: 20,
            width: double.infinity),
            Text("\$"+amountvalues[index].toString(),style:TextStyle(fontSize: 120,color: Colors.green),),
            SizedBox(height:heightScreen * 0.25 ,
            width:double.infinity,
            child: ButtonTheme(
              minWidth: 80,
              height: 20,
              child: FlatButton(
                child: Text("Settled up??",style: TextStyle(color: Colors.green,fontSize: 20),),
                onPressed: ()=> null,
              ),
            ),
            ),
            ButtonTheme(minWidth: 200,
            height:25,
            buttonColor: Colors.lightGreen,
              child:
            RaisedButton(
              child:
            Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Text("REMINDER MAIL"),
              Icon(Icons.email),
            ],
            ),
            onPressed: ()=> null,
            ),
            ),
            ButtonTheme(minWidth: 200,
            height:25,
            buttonColor: Colors.greenAccent,
              child:
            RaisedButton(
              child:
            Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Text("REMINDER MESSAGE"),
              Icon(Icons.email),
            ],
            ),
            onPressed: ()=> null,
            ),
            ),


          ],
          
        )
       
      ],
    ),
    ),
    onSwipeRight:PeopleYouOwe,

    onSwipeLeft:PeopleOweYou,
    ),
    
    ),
    );
  }


  }



















 
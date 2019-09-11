import 'package:flutter/material.dart';
import '../components/mydrawer.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Rememberthee"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        drawer: MyDrawer(),
       
        body:SingleChildScrollView(
          child: Column(
          children: <Widget>[
             Container(
               margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                height: MediaQuery.of(context).size.height * 0.40,
                child: Card(
                  elevation: 8,
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                   child: Container(
                  decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/natiive.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child:Padding(
                   padding: const EdgeInsets.only(top: 50.0),
                   child: Column(
                    children: <Widget>[
                        Text("RememberThee", style: new TextStyle(fontSize: 20.0)),
                        Text("Where life stories go on", style: new TextStyle(fontSize: 17.0)),
                    ],
                  ),
               ),
                   ),
                ),
             ),
              Card(
                  elevation: 8,
                  color: Colors.white24,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: Text("It's the circle of life And it moves us all Through despair and hopeThrough faith and loveTill we find our place On the path unwinding",),
                  ),
                ),
              ],
                    
            ) ,
        ) 
       );
  } //end-Widget
} //end-class-_MyHomePageState

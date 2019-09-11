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
                width: MediaQuery.of(context).size.width*0.8,
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
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
               ),
                ),
             ),
              ],
                    
            ) ,
        ) 
       );
  } //end-Widget
} //end-class-_MyHomePageState

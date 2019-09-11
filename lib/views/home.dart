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
       
        body: Column(
          children: <Widget>[
            
    ],
           
  ));
  } //end-Widget
} //end-class-_MyHomePageState

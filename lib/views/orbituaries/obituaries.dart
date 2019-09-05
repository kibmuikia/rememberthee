import 'package:flutter/material.dart';

class ListObituariesPage extends StatefulWidget {
  @override
  _ListObituariesPageState createState() => new _ListObituariesPageState();
}

class _ListObituariesPageState extends State<ListObituariesPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Obituaries'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Center(
        child: new Text("List Obituaries Page", style: new TextStyle(fontSize: 35.0)),
      ),
    );
  }
}

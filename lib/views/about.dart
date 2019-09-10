import 'package:flutter/material.dart';
import '../components/mydrawer.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => new _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('About'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      drawer: MyDrawer(),
      body: new Center(
        child: new Text("About Page", style: new TextStyle(fontSize: 35.0)),
      ),
    );
  }
}

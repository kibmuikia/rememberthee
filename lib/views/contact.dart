import 'package:flutter/material.dart';
import '../components/mydrawer.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => new _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Contact Us'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      drawer: MyDrawer(),
      body: new Center(
        child: new Text("Contact Page", style: new TextStyle(fontSize: 35.0)),
      ),
    );
  }
}

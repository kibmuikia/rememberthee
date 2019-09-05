import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sign Up'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Center(
        child: new Text("Login Page", style: new TextStyle(fontSize: 35.0)),
      ),
    );
  }
}

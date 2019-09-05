import 'package:flutter/material.dart';

// class LoginView extends StatelessWidget {
class LoginView extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();

}//end-class-LoginView

class _LoginState extends State<LoginView> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login View',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'Sign In',
          ),
        ),
        body: new Center(
          child: new Text(
            'Using the form provided, gain access to your account',
            style: new TextStyle(
              fontSize: 22.00,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }// end-Widget

}//end-class-state-loginstate

import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'About View',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'About RememberThee',
          ),
        ),
        body: new Center(
          child: new Text(
            'Summary of the service provided and contact information',
            style: new TextStyle(
              fontSize: 22.00,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

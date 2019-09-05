import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => new _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Upload Orbituary'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Center(
        child: new Text("Upload Page", style: new TextStyle(fontSize: 35.0)),
      ),
    );
  }
}

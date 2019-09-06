import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => new _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Upload Orbituary'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      // body: new Center(
      //   child: new Text("Upload Page", style: new TextStyle(fontSize: 35.0)),
      // ),
      body: new Center(
        child:SingleChildScrollView(
        child:Container(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
            color: Colors.white70,
            margin: new EdgeInsets.symmetric(
             vertical: 40.0,
            horizontal: 20.0,
            ),
          child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                  padding: EdgeInsets.all(15.0),
                  child:TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Name of your loved one",
                      hoverColor: Colors.lightBlueAccent,
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter the name of your loved one';
                      }
                      return null;
                    },
                  ),),

                  Padding(
                  padding: EdgeInsets.all(15.0),
                  child:TextFormField(
                    maxLines: 8,
                    decoration: InputDecoration(
                      labelText:
                          'Write a brief description of your loved one plus the funeral arrangements',
                      hoverColor: Colors.lightBlueAccent,
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a description';
                      }
                      return null;
                    },
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false
                        // otherwise.
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, display a Snackbar.
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Orbituary')));
                        }
                      },
                      textColor: Colors.white,
                      color: Colors.lightBlueAccent,
                      child: Text('Submit Orbituary'),
                    ),
                  ),
                ],
              )
              )
        ),
      ),
      ),
      ),
    );
  }
}

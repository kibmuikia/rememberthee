import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sign In'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Center(
          // <<<<<<< HEAD
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
                      labelText: "Enter your email",
                      hoverColor: Colors.lightBlueAccent,
                      border: OutlineInputBorder(), 
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(15.0),
                  child:TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your password',
                      hoverColor: Colors.lightBlueAccent,
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                 ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false
                        // otherwise.
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, display a Snackbar.
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                        }
                      },
                      textColor: Colors.white,
                      color: Colors.lightBlueAccent,
                      child: Text('Sign In'),
                    ),
                  ),
                ],
              )
              )
              )
               )
              ),
      ),
// =======
      // child: Form(
      //     key: _formKey,
      //     child: Column(
      //       children: <Widget>[
      //         TextFormField(
      //           decoration: InputDecoration(
      //             labelText: "Enter your username/email",
      //             hoverColor: Colors.lightBlueAccent,
      //           ),
      //           validator: (value) {
      //             if (value.isEmpty) {
      //               return 'Please enter username';
      //             }
      //             return null;
      //           },
      //         ),
      //         TextFormField(
      //           decoration: InputDecoration(
      //             labelText: 'Enter your password',
      //             hoverColor: Colors.lightBlueAccent,
      //           ),
      //           validator: (value) {
      //             if (value.isEmpty) {
      //               return 'Please enter your password';
      //             }
      //             return null;
      //           },
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(vertical: 16.0),
      //           child: RaisedButton(
      //             onPressed: () {
      //               // Validate returns true if the form is valid, or false
      //               // otherwise.
      //               if (_formKey.currentState.validate()) {
      //                 // If the form is valid, display a Snackbar.
      //                 Scaffold.of(context).showSnackBar(
      //                     SnackBar(content: Text('Processing Data')));
      //               }
      //             },
      //             child: Text('Submit'),
      //           ),
      //         ),
      //       ],
      //     ))),
// >>>>>>> devkib
    );
  }
}

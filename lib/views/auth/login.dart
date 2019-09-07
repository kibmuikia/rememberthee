import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'register.dart';
import '../../models/user.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  User signinUser = new User();

  void processSignIn() async {
    var url = "https://rememberthee.com/android/process_signin.php";

    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      showMessage('Form is not valid!  Please review and correct.');
    } else {
      form.save(); //This invokes each onSaved event
      print('\tForm save called, user_signin is now up to date...');
      print("\tAbout to send data :: ");
      print('\tEmail: ${signinUser.email}');
      print('\tFirst Name: ${signinUser.password}');

      try {
        final response = await http.post(url, body: {
          "regEmail": signinUser.email,
          "regPwd": signinUser.password
        });
        // print(response);
        print(response.statusCode);
        // print(response.headers);
        // print(response.reasonPhrase);
        print(response.body);
        showMessage(response.body, Colors.green);
        form.reset();
      } catch (e) {
        print("\t\tError !!!");
        print(e);
        // print(e.message);
        print('\n');
        throw Exception('ERROR__Sign-IN :: ' + e);
      }
    }
  } //end-processSignIn

  void showMessage(String message, [MaterialColor color = Colors.red]) {
    _scaffoldKey.currentState.showSnackBar(
        new SnackBar(backgroundColor: color, content: new Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sign In'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Center(
        // <<<<<<< HEAD
        child: SingleChildScrollView(
            child: Container(
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
                              child: TextFormField(
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
                                onSaved: (val) => signinUser.email = val,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: TextFormField(
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
                                onSaved: (val) => signinUser.password = val,
                              ),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    RaisedButton(
                                      onPressed: processSignIn,
                                      textColor: Colors.white,
                                      color: Colors.lightBlueAccent,
                                      child: Text('Sign In'),
                                    ),
                                    RaisedButton(
                                      color: Colors.orangeAccent,
                                      textColor: Colors.white,
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                RegisterPage(),
                                          )),
                                      child: Text('No Account, Sign Up'),
                                    ),
                                  ],
                                )),
                          ],
                        ))))),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:rememberthee/components/mydrawer.dart';

import 'register.dart';
// import 'profile.dart';
import 'package:rememberthee/models/account.dart';
import '../../mystore/v1/state.dart';
import '../../mystore/v1/myactions/user_actions.dart';

typedef OnUserAddedCallback = Function(String email, String password);

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  String email;
  String password;

  void showMessage(String message, [MaterialColor color = Colors.red]) {
    _scaffoldKey.currentState.showSnackBar(
        new SnackBar(backgroundColor: color, content: new Text(message)));
  }

  //new-Widget-with-access-to-store
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, OnUserAddedCallback>(
      converter: (Store<AppState> store) {
        return (email, password) {
          // Account user = new Account();
          // user.email = email;
          // user.password = password;
          store.dispatch(new SignInUserAction(email, password));
        };
      }, //end-convertor
      builder: (BuildContext context, callback) {
        return new Scaffold(
          key: _scaffoldKey,
          appBar: new AppBar(
            title: new Text('Sign In'),
            backgroundColor: Colors.deepOrangeAccent,
          ), //end-appBar
          drawer: MyDrawer(), //end-drawer
          body: new Center(
            // .
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
                                    onSaved: (val) => email = val,
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
                                    onSaved: (val) => password = val,
                                  ),
                                ), //end-password
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        RaisedButton(
                                          // onPressed: processSignIn,
                                          onPressed: () {
                                            // . call action
                                            final FormState form =
                                                _formKey.currentState;
                                            if (!form.validate()) {
                                              showMessage(
                                                  'Form is not valid!  Please review and correct.');
                                            } else {
                                              form.save();
                                              callback(email, password);
                                            }
                                          },
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
                                                builder:
                                                    (BuildContext context) =>
                                                        RegisterPage(),
                                              )),
                                          child: Text('No Account, Sign Up'),
                                        ),
                                      ],
                                    )),
                              ],
                            ) //end-Column
                            ) //end-Form
                        ) //end-Container
                    ) //end-Container
                ), //end-SingChildScrollView
            // .
          ), //end-body
        ); //end-return-Scaffold

        // .
      }, //end-builder
    ); //end-return-StoreConnector
    // .
  } //end-Widget-store-access

// .
} //end-class-_LoginPageState

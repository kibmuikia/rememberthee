import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import '../../components/mydrawer.dart';

import '../../models/user.dart';

class ProfilePage extends StatefulWidget {
  final User authenticatedUser;
  ProfilePage({Key key, @required this.authenticatedUser}) : super(key: key);

  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text(widget.authenticatedUser.fname + "'s Profile"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      drawer: MyDrawer(),
      body: Stack(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.deepOrangeAccent,
                radius: 47.0,
                child: Text(widget.authenticatedUser.lname +
                    "  " +
                    widget.authenticatedUser.fname),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 10.0, 20.0, 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.40,
                child: Card(
                  elevation: 8,
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Column(children: <Widget>[
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text("Second Name :",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 2.0,
                                      fontSize: 22)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(widget.authenticatedUser.lname,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 18)),
                            ),
                          ]),
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text("First Name :",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 2.0,
                                      fontSize: 22)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(widget.authenticatedUser.fname,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 18)),
                            ),
                          ]),
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text("Email :",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 2.0,
                                      fontSize: 22)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(widget.authenticatedUser.email,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 18)),
                            ),
                          ]),
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text("Phone :",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 2.0,
                                      fontSize: 22)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(widget.authenticatedUser.phone,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 18)),
                            ),
                          ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                RaisedButton(
                                  child: Text("Edit Profile"),
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  onPressed: () => SnackBar(
                                      content: Text('Profile EDIT VIEW')),
                                ),
                                RaisedButton(
                                  child: Text("Change Password"),
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  onPressed: () => SnackBar(
                                      content: Text('Password ChangeView')),
                                ),
                              ])
                        ]),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),

      //Text(widget.authenticatedUser.email),
    );
  } //end-Widget

} //end-class-_ProfilePageState

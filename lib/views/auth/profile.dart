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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(widget.authenticatedUser.email),
      ),
    );
  } //end-Widget

} //end-class-_ProfilePageState

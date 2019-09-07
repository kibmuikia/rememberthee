import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Your Profile"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        drawer: new Drawer(
            child: new ListView(children: <Widget>[
          new DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Colors.deepOrange, Colors.orangeAccent]),
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    elevation: 10,
                    child: Image.asset('assets/remthee.jpg',
                        width: 100, height: 100),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Rememberthee',
                    ),
                  ),
                ],
              ),
            ),
          ),
          new ListTile(
            title: new Text("Welcome To Rememberthee"),
          ),
          new Divider(),
          new ListTile(
                  title: new Text("Home"),
                  trailing: new Icon(Icons.home),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/');
                  }),
          new ListTile(
              title: new Text("Your Profile"),
              trailing: new Icon(Icons.account_circle),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/profile');
              }),
          new ListTile(
              title: new Text("Post Obituary"),
              trailing: new Icon(Icons.cloud_upload),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/upload');
              }),
          new ListTile(
              title: new Text("View Obituaries"),
              trailing: new Icon(Icons.view_list),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/view');
              }),
        ])),
        body: new Center(
          child: new Text("Profile Page", style: new TextStyle(fontSize: 35.0)),
        ));
  } //end-Widget

} //end-class-_ProfilePageState

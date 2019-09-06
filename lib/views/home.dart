import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Rememberthee"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
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
              new ListTile(
                  title: new Text("Register"),
                  trailing: new Icon(Icons.account_circle),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/register');
                  }),
              new ListTile(
                  title: new Text("Login"),
                  trailing: new Icon(Icons.account_circle),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/login');
                  }),
              new ListTile(
                  title: new Text("About"),
                  trailing: new Icon(Icons.info),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/about');
                  }),
              new ListTile(
                  title: new Text("Contact"),
                  trailing: new Icon(Icons.phone),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/contact');
                  }),
            ],
          ),
        ),
        body: new Center(
          child: new Text("Home Page", style: new TextStyle(fontSize: 35.0)),
        ));
  }
}

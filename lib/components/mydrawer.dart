import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawer createState() => new _MyDrawer();
} //end-class-MyDrawer

class _MyDrawer extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
      return new Drawer(
            child: new ListView(children: <Widget>[
      new DrawerHeader(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[Colors.deepOrange, Colors.orangeAccent]),
        ), //end-decoration
        child: Container(
          child: Column(
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                elevation: 10,
                child:
                    Image.asset('assets/remthee.jpg', width: 100, height: 100),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Rememberthee',
                ),
              ),
            ],
          ),
        ), //end-child-Container
      ), //end-DrawerHeader
      new ListTile(
        title: new Text("Welcome To Rememberthee"),
      ), //end-ListTile
      new Divider(),
      new ListTile(
          title: new Text("Home"),
          trailing: new Icon(Icons.home),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/');
          }), //end-ListTile-Home
    ] //end-children-<Widget>
                ) //end-child-ListView
            );//end-return-Drawer
  } //end-Widget

} //end-class-_MyDrawer

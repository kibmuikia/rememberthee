import 'package:flutter/material.dart';
import '../components/mydrawer.dart';

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
        drawer: MyDrawer(),
        // drawer: new Drawer(
        //   child: new ListView(
        //     children: <Widget>[
        //       new DrawerHeader(
        //         decoration: BoxDecoration(
        //           gradient: LinearGradient(
        //               colors: <Color>[Colors.deepOrange, Colors.orangeAccent]),
        //         ),
        //         child: Container(
        //           child: Column(
        //             children: <Widget>[
        //               Material(
        //                 borderRadius: BorderRadius.all(Radius.circular(50.0)),
        //                 elevation: 10,
        //                 child: Image.asset('assets/remthee.jpg',
        //                     width: 100, height: 100),
        //               ),
        //               Padding(
        //                 padding: EdgeInsets.all(8.0),
        //                 child: Text(
        //                   'Rememberthee',
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       new ListTile(
        //         title: new Text("Welcome To Rememberthee"),
        //       ),
        //       new Divider(),
        //       new ListTile(
        //           title: new Text("Home"),
        //           trailing: new Icon(Icons.home),
        //           onTap: () {
        //             Navigator.of(context).pop();
        //             Navigator.of(context).pushNamed('/');
        //           }),
        //       new ExpansionTile(
        //           title: Text("Obituary"),
        //           trailing: new Icon(Icons.folder),
        //           children: <Widget>[
        //             ListTile(
        //                 title: Text("View Obituaries",
        //                     textAlign: TextAlign.center),
        //                 trailing: new Icon(Icons.view_list),
        //                 onTap: () {
        //                   Navigator.of(context).pop();
        //                   Navigator.of(context).pushNamed('/view');
        //                 }),
        //             ListTile(
        //                 title:
        //                     Text("Post Obituary", textAlign: TextAlign.center),
        //                 trailing: new Icon(Icons.cloud_upload),
        //                 onTap: () {
        //                   Navigator.of(context).pop();
        //                   Navigator.of(context).pushNamed('/upload');
        //                 }),
        //           ]),
        //       new ExpansionTile(
        //         title: Text("Accounts"),
        //         trailing: new Icon(Icons.account_circle),
        //         children: <Widget>[
        //           ListTile(
        //               title: Text(
        //                 "Register",
        //                 textAlign: TextAlign.center,
        //               ),
        //               trailing: new Icon(Icons.account_box),
        //               onTap: () {
        //                 Navigator.of(context).pop();
        //                 Navigator.of(context).pushNamed('/register');
        //               }),
        //           ListTile(
        //               title: Text(
        //                 "Login",
        //                 textAlign: TextAlign.center,
        //               ),
        //               trailing: new Icon(Icons.account_circle),
        //               onTap: () {
        //                 Navigator.of(context).pop();
        //                 Navigator.of(context).pushNamed('/login');
        //               }),
        //           ListTile(
        //               title: Text(
        //                 "Profile",
        //                 textAlign: TextAlign.center,
        //               ),
        //               trailing: new Icon(Icons.person_outline),
        //               onTap: () {
        //                 Navigator.of(context).pop();
        //                 Navigator.of(context).pushNamed('/profile');
        //               }),
        //           ListTile(
        //             title: Text(
        //               "Logout",
        //               textAlign: TextAlign.center,
        //             ),
        //             trailing: new Icon(Icons.phonelink_erase),
        //           ),
        //         ],
        //       ),
        //       new ListTile(
        //           title: new Text("About"),
        //           trailing: new Icon(Icons.info),
        //           onTap: () {
        //             Navigator.of(context).pop();
        //             Navigator.of(context).pushNamed('/about');
        //           }),
        //       new ListTile(
        //           title: new Text("Contact"),
        //           trailing: new Icon(Icons.phone),
        //           onTap: () {
        //             Navigator.of(context).pop();
        //             Navigator.of(context).pushNamed('/contact');
        //           }),
        //     ],
        //   ),
        // ),
        body: new Center(
          child: new Text("Home Page", style: new TextStyle(fontSize: 35.0)),
        ));
  } //end-Widget
} //end-class-_MyHomePageState

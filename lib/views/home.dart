import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Home View',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'RememberThee',
          ),
        ),
        // body: new Center(
        //   child: new Text(
        //     'Pokea Salamu kutoka admin',
        //     style: new TextStyle(
        //       fontSize: 22.00,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),//body
        body: new Container(
          padding: EdgeInsets.only(top: 48.0, left: 24.0, right: 24.0),
          child: new ListView(
            children: <Widget>[
              new Center(
                child: new Text(
                  'Pokea Salamu kutoka admin, have fun',
                  style: new TextStyle(
                    fontSize: 22.00,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new SizedBox(height: 34.0,),
              new RaisedButton(
                color: Colors.lightBlueAccent,
                child: new Text(
                  'Go to Login',
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

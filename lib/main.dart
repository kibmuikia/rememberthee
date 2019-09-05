import 'package:flutter/material.dart';
import 'routing.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rememberthee, where memories last',
      theme:ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: routes
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Rememberthee'),
      //   ),
      //   body: Center(
      //     child: Text('Pokea salamu kutoka admin'),
      //   ),
      // ),
    );
  }
}

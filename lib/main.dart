import 'package:flutter/material.dart';
import 'routing.dart';

// import 'home.dart';
// import 'about.dart';
// import 'contact.dart';
// import 'login.dart';
// import 'obituaries.dart';
// import 'register.dart';
// import 'postupload.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Rememberthee Application',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: new MyHomePage(),
        initialRoute: '/',
        routes: routes
        // routes: <String, WidgetBuilder>{
        //   '/home': (BuildContext context) => new MyHomePage(),
        //   '/about': (BuildContext context) => new AboutPage(),
        //   '/contact': (BuildContext context) => new ContactPage(),
        //   '/upload': (BuildContext context) => new UploadPage(),
        //   '/view': (BuildContext context) => new ListObituariesPage(),
        //   '/register': (BuildContext context) => new RegisterPage(),
        //   '/login': (BuildContext context) => new LoginPage(),
        // },
        );
  }
}

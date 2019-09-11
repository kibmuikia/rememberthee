import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'routing.dart';
import 'package:rememberthee/mystore/v1/state.dart';
import 'package:rememberthee/mystore/v1/reducers.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // final Store<AppState> store = Store<AppState>(
  //   appReducer,
  //   initialState: AppState.initial(),
  //   middleware: createStoreMiddleware(),
  // );
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(),
    middleware: [],
  ); //end-store

  @override
  Widget build(BuildContext context) => StoreProvider(
        store: store,
        child: MaterialApp(
            title: 'Rememberthee Application',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: '/',
            routes: routes),
      ); //end-Widget-new-store

  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return new MaterialApp(
  //       title: 'Rememberthee Application',
  //       theme: new ThemeData(
  //         primarySwatch: Colors.blue,
  //       ), //end-theme
  //       // home: new MyHomePage(),
  //       initialRoute: '/',
  //       routes: routes
  //     );
  // }//end-Widget-original

// .
} //end-class-MyApp

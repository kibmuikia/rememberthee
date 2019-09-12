import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'routing.dart';
import 'package:rememberthee/mystore/v1/state.dart';
import 'package:rememberthee/mystore/v1/reducers.dart';
import 'package:rememberthee/mystore/v1/middlewares.dart';

void main() => runApp(new MyApp());

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  // final Store<AppState> store = Store<AppState>(
  //   appReducer,
  //   initialState: AppState.initial(),
  //   middleware: createStoreMiddleware(),
  // );
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(),
    // middleware: [],
    middleware: createStoreMiddleware(),
  ); //end-store

  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
            navigatorKey: navigatorKey,
            // onGenerateRoute: generateRoute,
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

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../mystore/v1/state.dart';

import '../models/account.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawer createState() => new _MyDrawer();
} //end-class-MyDrawer

class _MyDrawer extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
        converter: (Store<AppState> store) {
          return;
          // return () {
          //   // .
          // };//end-return
        }, //end-converter
        builder: (BuildContext context, _ViewModel vm) {
          return new Drawer(
            child: new ListView(
              // .

              children: <Widget>[
                // .

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
                  // title: new Text( vm.user != null ? "Welcome, $vm.user.fname, to Rememberthee" : "Welcome To Rememberthee" ),
                  title: new Text( "Welcome to Rememberthee" )
                ), //end-ListTile
                new Divider(),
                new ListTile(
                    title: new Text("Home"),
                    trailing: new Icon(Icons.home),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/');
                    }), //end-ListTile-Home
                new ExpansionTile(
                    title: Text("Obituary"),
                    trailing: new Icon(Icons.folder),
                    children: <Widget>[
                      ListTile(
                          title: Text("View Obituaries", textAlign: TextAlign.center),
                          trailing: new Icon(Icons.view_list),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pushNamed('/view');
                          }), //end-ListTile-viewobituaries

                        ListTile(
                            title: Text(
                              // vm.user != null ? "Post Obituary" : "Please sign-IN to post",
                              "Post Obituary",
                              textAlign: TextAlign.center,
                              ),
                            trailing: new Icon(Icons.cloud_upload),
                            onTap: () {
                              // if( vm.user != null ) {
                                Navigator.of(context).pop();
                                Navigator.of(context).pushNamed('/upload');
                              // }
                            }), //end-ListTile-postobituary

                    ] //end-children-<Widget>
                    ), //end-ExpansionTile-obituary
                // .
                new ExpansionTile(
                    title: Text("Account"),
                    trailing: new Icon(Icons.account_circle),
                    children:
                    <Widget>[
                      ListTile(
                          title: Text(
                            "Register",
                            textAlign: TextAlign.center,
                          ),
                          trailing: new Icon(Icons.account_box),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pushNamed('/register');
                          }), //end-ListTile-register
                      ListTile(
                          title: Text(
                            "Login",
                            textAlign: TextAlign.center,
                          ),
                          trailing: new Icon(Icons.account_circle),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pushNamed('/login');
                          }), //end-ListTile-login
                      ListTile(
                          title: Text(
                            "Profile",
                            textAlign: TextAlign.center,
                          ),
                          trailing: new Icon(Icons.person_outline),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pushNamed('/profile');
                          }), //end-ListTile-profile
                      ListTile(
                        title: Text(
                          "Logout",
                          textAlign: TextAlign.center,
                        ),
                        trailing: new Icon(Icons.phonelink_erase),
                      ), //end-ListTile-logout
                    ] //end-children-<Widget>
                    ), //end-ExpansionTile-account
                // .
                new ListTile(
                    title: new Text("About"),
                    trailing: new Icon(Icons.info),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/about');
                    }), //end-ListTile-about
                new ListTile(
                    title: new Text("Contact"),
                    trailing: new Icon(Icons.phone),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/contact');
                    }), //end-ListTile-contact

                // .
              ]//end-children-<Widget>

              // .
            ) //end-child-ListView
          ); //end-return-Drawer
        } //end-builder
      ); //end-return-StoreConnector
  }//end-Widget

} //end-class-_MyDrawer

class _ViewModel {
  final Account user;
  final bool isLoading;
  final dynamic error;

  _ViewModel( { this.user, this.isLoading, this.error  } );

  static _ViewModel fromStore( Store<AppState> store ) {
    
    return new _ViewModel(
      user: store.state?.user,
      isLoading: store.state?.isLoading,
      error: store.state?.error
    );//end-retunr

  }//end-static-_ViewModel-fromStore

// .
}//end-class-_ViewModel

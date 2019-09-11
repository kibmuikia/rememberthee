import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../components/mydrawer.dart';

import '../../models/account.dart';
import '../../mystore/v1/state.dart';
// import '../../mystore/v1/myactions/user_actions.dart';

class ProfilePage extends StatefulWidget {
  // final Account authenticatedUser = new Account();
  // ProfilePage({Key key, @required this.authenticatedUser}) : super(key: key);

  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (BuildContext context, _ViewModel vm) {
        if (vm.id == null) {
          return new Scaffold(
            appBar: new AppBar(
              title: new Text( 'Unauthorised User' ),
              backgroundColor: Colors.deepOrangeAccent,
            ),
            drawer: MyDrawer(),
            body: new Text( 'Please SignIn or SignUP' )
          );
        } else {
          return new Scaffold(
            key: _scaffoldKey,
            appBar: new AppBar(
              title: new Text( vm.user.fname + "'s Profile" ),
              backgroundColor: Colors.deepOrangeAccent,
            ),//end-appBar
            drawer: MyDrawer(),//end-drawer
            body: Stack(
              children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.deepOrangeAccent,
                radius: 47.0,
                child: Text(vm.user.lname +
                    "  " +
                    vm.user.fname),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 10.0, 20.0, 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.40,
                child: Card(
                  elevation: 8,
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Column(children: <Widget>[
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text("Second Name :",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 2.0,
                                      fontSize: 22)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(vm.user.lname,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 18)),
                            ),
                          ]),
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text("First Name :",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 2.0,
                                      fontSize: 22)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(vm.user.fname,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 18)),
                            ),
                          ]),
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text("Email :",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 2.0,
                                      fontSize: 22)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(vm.user.email,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 18)),
                            ),
                          ]),
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text("Phone :",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 2.0,
                                      fontSize: 22)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(vm.user.phone,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 18)),
                            ),
                          ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                RaisedButton(
                                  child: Text("Edit Profile"),
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  onPressed: () => SnackBar(
                                      content: Text('Profile EDIT VIEW')),
                                ),
                                RaisedButton(
                                  child: Text("Change Password"),
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  onPressed: () => SnackBar(
                                      content: Text('Password ChangeView')),
                                ),
                              ])
                        ]),
                      ],
                    ),
                  ),
                ),
              )),
        ],
            )//end-body

            // .
          );//end-Scaffold
        }
      }//end-builder
    );//end-return-StoreConnector

    // .
  } //end-Widget

} //end-class-_ProfilePageState
//end-class-_ProfilePageState

class _ViewModel {
  
  final Account user;
  final int id;

  _ViewModel( { @required this.id, this.user } );

  static _ViewModel fromStore(Store<AppState> store) {
    print( store.state.toString() );
    return new _ViewModel(
    		// We have to use the null aware operator here, so that
    		// when there isn't a user, it just fails silently
        // displayName: store.state.currentUser?.displayName,
        // profileImgUrl: store.state.currentUser?.photoUrl,
        id : store.state.user?.id
    );
  }

  // factory _ViewModel.create(Store<AppState> store) {

  //   Account user = store.state.user;

  //   if( user.id != null ) {
  //     return _ViewModel( user );
  //   } else {
  //     store.dispatch( ErrorOccurredAction( 'Invalid User, Please SignIN or SignUP' ) )
  //   }

  // }//end-factory

}//end- _ViewModel
//end- _ViewModel

import 'package:redux/redux.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'state.dart';
import 'myactions/user_actions.dart';

List<Middleware<AppState>> createStoreMiddleware() => [
      TypedMiddleware<AppState, SignInUserAction>(_processSignIn),
    ];

Future _processSignIn(
    Store<AppState> store, SignInUserAction action, NextDispatcher next) async {
  // await Future.sync(() => Duration(seconds: 3)); // Simulate saving the list to disk
  print('\n Middleware[ _processSignIn ]');
  print(action.user);
  print(action.user.email);
  print(action.user.password);
  print( "fname:" + action.user.fname);
  print('\n');

  var url = "https://rememberthee.com/android/process_signin.php";

  try {
    final response = await http.post(url,
        body: {"regEmail": action.user.email, "regPwd": action.user.password});

    if (response.body == "Invalid_User") {
      print(response.body);
      store.dispatch(new SignInFailAction(response.body));
    } else if (response.body == "Invalid_Password") {
      print(response.body);
      store.dispatch(new SignInFailAction(response.body));
    } else {
      Map userdecoded = jsonDecode(response.body);
      var message = "Welcome, $userdecoded";
      print(message);
      action.user.id = int.parse(userdecoded['id']);
      action.user.fname = userdecoded['fname'];
      action.user.lname = userdecoded['lname'];
      action.user.phone = userdecoded['phone'];
      print(action.user.fname +
          action.user.lname +
          action.user.email +
          action.user.phone);
      print(action.user.id);

      store.dispatch(new SignInSuccessfulAction(user: action.user));
    }

    // .
  } catch (error) {
    // .
  }

  next(action);
} //end-_processSignIn

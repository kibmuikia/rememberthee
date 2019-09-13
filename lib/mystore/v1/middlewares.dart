import 'package:redux/redux.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'state.dart';
import 'myactions/user_actions.dart';
import '../../models/account.dart';

List<Middleware<AppState>> createStoreMiddleware() => [
      TypedMiddleware<AppState, SignInUserAction>(_processSignIn),
    ];

Future _processSignIn(
    Store<AppState> store, SignInUserAction action, NextDispatcher next) async {
  print('\n Middleware[ _processSignIn ]');
  print(action.email);
  print(action.password);

  var url = "https://rememberthee.com/android/process_signin.php";

  try {
    final response = await http
        .post(url, body: {"regEmail": action.email, "regPwd": action.password});

    if (response.body == "Invalid_User") {
      print(response.body);
      store.dispatch(new SignInFailAction(response.body));
    } else if (response.body == "Invalid_Password") {
      print(response.body);
      store.dispatch(new SignInFailAction(response.body));
    } else {
      Map userdecoded = jsonDecode(response.body);
      Account user = new Account();
      user.id = int.parse(userdecoded['id']);
      user.email = action.email;
      user.fname = userdecoded['fname'];
      user.lname = userdecoded['lname'];
      user.phone = userdecoded['phone'];
      print(user.id);

      store.dispatch(new SignInSuccessfulAction(user: user));
    }

    // .
  } catch (error) {
    // .
  }

  next(action);
} //end-_processSignIn

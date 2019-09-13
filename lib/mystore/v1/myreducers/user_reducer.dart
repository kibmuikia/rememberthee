// import 'package:redux/redux.dart';

// import 'package:rememberthee/models/user.dart';
import 'package:rememberthee/models/account.dart';

import 'package:rememberthee/mystore/v1/myactions/user_actions.dart';

// final userReducer = TypedReducer<bool, SignInUserAction>(_testActionReducer);

Account userReducer(Account currentuser, action) {
  // RegisterUserAction SignInUserAction SignOutUserAction

  if (action is RegisterUserAction) {
    print('\t Registering user[returning received action.newUser]');
    // print( action.newUser );
    // return action.newUser;
    return currentuser;

    // end-RegisterUserAction
  } else if (action is SignInUserAction) {
    print('\t Signing-In user[returning received action.user]');
    print("Current/OldState[user] ::> $currentuser");
    print("action ::> " + action.email + " :: " + action.password);

    // return action.user;
    return currentuser;

    // end-SignInUserAction
  } else if (action is SignInSuccessfulAction) {
    print('\n\t [SignInSuccessfulAction]');
    print(action.user);
    // currentuser = action.user;
    // print( currentuser );
    return action.user;

    // end-SignInSuccessfulAction
  } else if (action is SignInFailAction) {
    print('\n\t [ SignInFailAction ]');
    print(action.error);
    print(currentuser);
    return currentuser;

    // end-SignInFailAction
  } else if (action is SignOutUserAction) {
    // print( '\t User to be signed-out: $action.currentuser' );
    print('\t Signing-out user[setting to default user state]');
    print('\t user: $currentuser');
    return currentuser;

    // end-SignOutUserAction
  } else if (action is ErrorOccurredAction) {
    print('[ErrorOccurredAction]');
    print(action.error);
    return action.error;
  } else {
    return currentuser;
  }
} //end-userReducer

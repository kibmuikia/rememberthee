// import 'package:redux/redux.dart';

// import 'package:rememberthee/models/user.dart';
import 'package:rememberthee/models/account.dart';

import 'package:rememberthee/mystore/v1/myactions/user_actions.dart';

// final userReducer = TypedReducer<bool, SignInUserAction>(_testActionReducer);

Account userReducer( Account currentuser, action ) {

  // RegisterUserAction SignInUserAction SignOutUserAction

  if( action is RegisterUserAction ) {
    print( '\t Registering user[returning received action.newUser]' );
    // print( '\t email: $action.newUser.email' );
    // return action.newUser;
    return currentuser;

    // end-RegisterUserAction
  } else if( action is SignInUserAction ) {
    print( '\t Signing-In user[returning received action.user]' );
    print( "CurrentState[user] ::> $currentuser" );
    print( action.user );

    return action.user;

    // end-SignInUserAction
  } else if ( action is SignOutUserAction ) {
    print( '\t User to be signed-out: $action.user.email' );
    print( '\t Signing-out user[setting to new User]' );
    print( '\t email: $currentuser.email' );
    return currentuser;

    // end-SignOutUserAction
  } else {
    return currentuser;
  }

}//end-userReducer
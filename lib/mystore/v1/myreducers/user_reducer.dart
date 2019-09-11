// import 'package:rememberthee/models/user.dart';
import 'package:rememberthee/models/account.dart';
import 'package:rememberthee/mystore/v1/myactions/user_actions.dart';

Account userReducer( Account currentuser, action ) {

  // RegisterUserAction SignInUserAction SignOutUserAction
  print( currentuser );

  if( action is RegisterUserAction ) {
    print( '\t Registering user[returning received user]' );
    // print( '\t email: $currentuser.email' );
    return currentuser;
  } else if( action is SignInUserAction ) {
    print( '\t Signing-In user[returning received user]' );
    // print( '\t user: $currentuser' );
    // print( action );
    // print( currentuser );
    return currentuser;
  } else if ( action is SignOutUserAction ) {
    print( '\t User to be signed-out: $currentuser.email' );
    // gotuser = new User();
    currentuser = new Account();
    currentuser.email = '';
    currentuser.password = '';
    print( '\t Signing-out user[setting to new User]' );
    // print( '\t email: $currentuser.email' );
    return currentuser;
  } else {
    return currentuser;
  }

}//end-userReducer
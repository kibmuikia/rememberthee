// import 'package:rememberthee/models/user.dart';
import 'package:rememberthee/models/account.dart';
import 'package:rememberthee/mystore/v1/myactions/user_actions.dart';

Account userReducer( Account user, action ) {

  // RegisterUserAction SignInUserAction SignOutUserAction

  if( action is RegisterUserAction ) {
    print( '\t Registering user[returning received user]' );
    print( '\t email: $user.email' );
    return user;
  } else if( action is SignInUserAction ) {
    print( '\t Signing-In user[returning received user]' );
    print( '\t email: $user.email' );
    return user;
  } else if ( action is SignOutUserAction ) {
    print( '\t User to be signed-out: $user.email' );
    // gotuser = new User();
    user = new Account( email: '', password: '' );
    print( '\t Signing-out user[setting to new User]' );
    print( '\t email: $user.email' );
    return user;
  } else {
    return user;
  }

}//end-userReducer
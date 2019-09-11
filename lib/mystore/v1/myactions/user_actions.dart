import 'package:rememberthee/models/user.dart';
import '../../../models/account.dart';

import 'package:meta/meta.dart';

class RegisterUserAction {
  final User newUser;

  RegisterUserAction( this.newUser );
}

class SignInUserAction {
  final Account user;

  SignInUserAction( this.user ) {
    // print( "\n Payload[ user: $user ]" );
  }

}

class SignInSuccessfulAction {
  final Account user;

  SignInSuccessfulAction( { @required this.user } );

  @override
  String toString() {
    return 'Sign-In SUCCESS [ $user ].';
  }
}

class SignInFailAction {
  final dynamic error;
  SignInFailAction( this.error );

  @override
  String toString() {
    return 'Sign In ERROR ::> $error';
  }
}

class SignOutUserAction {
  // final User currentUser;

  // SignOutUserAction( this.currentUser );
}
class SignOutSuccessfulAction {
  SignOutSuccessfulAction();
  @override
  String toString() {
    return 'Sign-Out-Success[ user: empty ].';
  }
}

class SignOutFailAction {
  final dynamic error;
  SignOutFailAction( this.error );

  @override
  String toString() {
    return 'Sign In ERROR ::> $error';
  }
}

class ErrorOccurredAction {
  final Exception exception;

  ErrorOccurredAction(this.exception);
}
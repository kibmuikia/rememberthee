import 'package:rememberthee/models/user.dart';
import '../../../models/account.dart';

class RegisterUserAction {
  final User newUser;

  RegisterUserAction( this.newUser );
}

class SignInUserAction {
  final Account user;

  SignInUserAction( this.user );

  @override
  String toString() {
    return "Account[ email : $this.user.email ]";
  }
}

class SignInSuccessfulAction {
  // .
}

class SignInFailAction {
  // .
}

class SignOutUserAction {
  final User currentUser;

  SignOutUserAction( this.currentUser );
}

class SignOutFailAction {
  // .
}

class ErrorOccurredAction {
  final Exception exception;

  ErrorOccurredAction(this.exception);
}
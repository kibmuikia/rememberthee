export '../mystore/v1/state.dart';

// import 'package:meta/meta.dart';

class Account {

  // final String email;
  // final String password;

  String email = '';
  String password = '';

  // Account( { @required this.email, @required this.password } );
  // Account();

  @override
  String toString() {
    return "Account[ email : $email, password: $password ]";
  }

}
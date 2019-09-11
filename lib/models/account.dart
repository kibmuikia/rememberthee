export '../mystore/v1/state.dart';

// import 'package:meta/meta.dart';

class Account {
  // final String email;
  // final String password;

  String email = '';
  String password = '';

  int id;
  String fname = '';
  String lname = '';
  String phone = '';

  // Account( { @required this.email, @required this.password } );
  // Account();

  @override
  String toString() {
    return "Account[ id: $id, email : $email ]";
  }
}

// import 'package:meta/meta.dart';

class User {
  int id;
  String fname = '';
  String lname = '';
  String email = '';
  String phone = '';
  String password = '';
  String passwordconfirm = '';

  // final int id;
  // final String fname;
  // final String lname;
  // final String email;
  // final String phone;
  // final String password;
  // final String passwordconfirm;

  // const User({
  //   @required this.email
  // });

  @override
  String toString() {
    return "User[email : $email ]";
  }


// .
}//end-class-User

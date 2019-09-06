import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'user.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // TextEditingController controllerEmail = new TextEditingController();
  User newUser = new User();

  void processSignUp() async {
    // https://rememberthee.com/android/
    var url = "https://rememberthee.com/android/process_signup.php";

    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      showMessage('Form is not valid!  Please review and correct.');
    } else {
      form.save(); //This invokes each onSaved event
      print('\tForm save called, newUser is now up to date...');

      if (newUser.password != newUser.passwordconfirm) {
        showMessage("Ensure BOTH passwords are similar !");
        // return false;
      } else {
        print( "\tAbout to send data :: " );
        print( '\tEmail: ${newUser.email}');
        print( '\tFirst Name: ${newUser.fname}');

        try
        {
          final response = await http.post(url, body: {
            "regFname": newUser.fname,
            "regLname": newUser.lname,
            "regEmail": newUser.email,
            "regPhone": newUser.phone,
            "regPwd": newUser.password
          });
          // print(response);
          print(response.statusCode);
          // print(response.headers);
          // print(response.reasonPhrase);
          print(response.body);
        } catch(e) {
          print('\n');
          print("\t\tServer Error !!!");
          print(e);
          print(e.message);
          print('\n');
          throw Exception('Sign-Up Error :: '+ e );
          print('\n');
        }
      }//end-else-pwd-check
    }//end-else-form-valid

  }//end-class-processSignUp

  void showMessage(String message, [MaterialColor color = Colors.red]) {
    _scaffoldKey.currentState.showSnackBar(
        new SnackBar(backgroundColor: color, content: new Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text('Sign Up'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Center(
          child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    // controller: controllerEmail,
                    decoration: InputDecoration(
                      labelText: "Enter your First Name",
                      hoverColor: Colors.lightBlueAccent,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter First Name';
                      }
                      return null;
                    },
                    onSaved: (val) => newUser.fname = val,
                  ),
                  TextFormField(
                    // controller: controllerEmail,
                    decoration: InputDecoration(
                      labelText: "Enter your Last Name",
                      hoverColor: Colors.lightBlueAccent,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Last Name';
                      }
                      return null;
                    },
                    onSaved: (val) => newUser.lname = val,
                  ),
                  TextFormField(
                    // controller: controllerEmail,
                    decoration: InputDecoration(
                      labelText: "Enter your email",
                      hoverColor: Colors.lightBlueAccent,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                    onSaved: (val) => newUser.email = val,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter your phone number",
                      hoverColor: Colors.lightBlueAccent,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter phone number';
                      }
                      return null;
                    },
                    onSaved: (val) => newUser.phone = val,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your password',
                      hoverColor: Colors.lightBlueAccent,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onSaved: (val) => newUser.password = val,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Confirm your password',
                      hoverColor: Colors.lightBlueAccent,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onSaved: (val) => newUser.passwordconfirm = val,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      // onPressed: () {
                      //   // Validate returns true if the form is valid, or false
                      //   // otherwise.
                      //   if (_formKey.currentState.validate()) {
                      //     // If the form is valid, display a Snackbar.
                      //     Scaffold.of(context).showSnackBar(
                      //         SnackBar(content: Text('Processing Data')));
                      //   }
                      // },
                      onPressed: processSignUp,
                      child: Text('Register'),
                    ),
                  ),
                ],
              ))),
    );
  }
}

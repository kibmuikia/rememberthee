import 'package:flutter/material.dart';
import '../../models/user.dart';
import '../../models/obituary.dart';

import 'package:intl/intl.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => new _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  // final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  User confirmedUser = new User();
  Obituary ob = new Obituary();
  var dof;

  void processObituary() async {
    var url = "https://rememberthee.com/android/";

    final FormState form = _formKey.currentState;

    if( !form.validate() ) {
      showMessage('Form is not valid!  Please review and correct.');
    } else if( dof == null ) {
      showMessage('Ensure you have choosen a date');
    }
    else {
      form.save();
      // var dofFormatted = new DateFormat('EEEE-dd-MMM-yyyy').format(dof);
      print(dof);
      try{
        // .
      } catch(error) {
        showMessage('Error in submitting obituary');
        print(error);
        throw Exception('Error[ Submitting Obituary ] :: ' + error);
      }
    }
  }//end-processObituary

  void showMessage(String message, [MaterialColor color = Colors.red]) {
    _scaffoldKey.currentState.showSnackBar(
        new SnackBar(backgroundColor: color, content: new Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text('Upload Orbituary'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      // body: new Center(
      //   child: new Text("Upload Page", style: new TextStyle(fontSize: 35.0)),
      // ),
      body: new Center(
        child: SingleChildScrollView(
          child: Container(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
                color: Colors.white70,
                margin: new EdgeInsets.symmetric(
                  vertical: 40.0,
                  horizontal: 20.0,
                ),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Enter First Name of your loved one",
                              hoverColor: Colors.lightBlueAccent,
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter First Name';
                              }
                              return null;
                            },
                            onSaved: (val) => ob.fname = val,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Enter Last Name of your loved one",
                              hoverColor: Colors.lightBlueAccent,
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter Last Name';
                              }
                              return null;
                            },
                            onSaved: (val) => ob.lname = val,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: TextFormField(
                            maxLines: 8,
                            decoration: InputDecoration(
                              labelText:
                                  'Write a description of your loved one plus the funeral arrangements',
                              hoverColor: Colors.lightBlueAccent,
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter a description';
                              }
                              return null;
                            },
                            onSaved: (val) => ob.description = val,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: FlatButton(
                            child: Text(
                              'Select Date of Funeral',
                              style: TextStyle(color: Colors.blue)
                            ),
                            onPressed: () async {
                              final picked = await showDatePicker(
                                context: context,
                                initialDate: new DateTime.now(),
                                firstDate: new DateTime.now().subtract(new Duration(days:5)),
                                lastDate: new DateTime.now().add(new Duration(days: 800))
                                // lastDate: new DateTime(2050),
                              );
                              if(picked != null && picked != dof){
                                setState( () {
                                  // var dofFormatted = new DateFormat('EEEE-dd-MMM-yyyy').format(dof);
                                  dof = new DateFormat('EEEE-dd-MMM-yyyy').format(picked);
                                } );
                              }
                              return dof;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              RaisedButton(
                                color: Colors.green,
                                textColor: Colors.white,
                                onPressed: processObituary,
                                child: Text('Submit Obituary'),
                              ),
                              RaisedButton(
                                color: Colors.red,
                                textColor: Colors.white,
                                onPressed: () {
                                  _formKey.currentState.reset();
                                  dof = null;
                                },
                                child: Text('Reset Form'),
                              ),
                            ]
                          ),
                        ),
                      ],
                    ))),
          ),
        ),
      ),
    );
  }
}

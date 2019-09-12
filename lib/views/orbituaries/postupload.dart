import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:image_picker_modern/image_picker_modern.dart';

import '../../components/mydrawer.dart';

import '../../models/user.dart';
import '../../models/obituary.dart';

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
    File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  void processObituary() async {
    var url = "https://rememberthee.com/android/process_obituary.php";

    final FormState form = _formKey.currentState;

    if (!form.validate()) {
      showMessage('Form is not valid!  Please review and correct.');
    } else if (dof == null) {
      showMessage('Ensure you have choosen a date');
    } else {
      form.save();
      ob.postedby = "1";
      print(dof);
      print('\tFirst Name: ${ob.fname}');
      print('\t\tPosted by: [ ${ob.postedby} ]');
      try {
        final response = await http.post(url, body: {
          "obFname": ob.fname,
          "obLname": ob.lname,
          "obDescription": ob.description,
          "obDOF": dof,
          "obUserId": ob.postedby
        });
        print(response.statusCode);
        print(response.body);
        if (response.body == "OK") {
          var message = 'Successful, [ ${ob.fname} ${ob.lname} ]';
          showMessage(message, Colors.green);
          form.reset();
          dof = null;
        } else {
          showMessage('FAILED to register obituary of ${ob.fname} ${ob.lname}');
        }
      } catch (error) {
        showMessage('Error in submitting obituary');
        print(error);
        throw Exception('Error[ Submitting Obituary ] :: ' + error);
      }
    }
  } //end-processObituary

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
      drawer: MyDrawer(),
      body: new Center(
        child: SingleChildScrollView(
          child: Container(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
                //color: Colors.white70,
                //margin: new EdgeInsets.symmetric(
                  //vertical: 40.0,
                 // horizontal: 20.0,
               // ),
               children: <Widget>[
                 Container(
                        child: _image == null
                            ? Text('No image selected.')
                            : Image.file(_image),
                      ),
                       FloatingActionButton(
                        onPressed: getImage,
                        tooltip: 'Pick Image',
                        child: Icon(Icons.add_a_photo),
                      ),
               
                 Form(
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
                                return 'Please enter a valid name';
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
                                return 'Please enter a valid name';
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
                            child: Text('Select Date of Funeral',
                                style: TextStyle(color: Colors.blue)),
                            onPressed: () async {
                              final picked = await showDatePicker(
                                  context: context,
                                  initialDate: new DateTime.now(),
                                  firstDate: new DateTime.now()
                                      .subtract(new Duration(days: 5)),
                                  lastDate: new DateTime.now()
                                      .add(new Duration(days: 800))
                                  // lastDate: new DateTime(2050),
                                  );
                              if (picked != null && picked != dof) {
                                setState(() {
                                  // var dofFormatted = new DateFormat('EEEE-dd-MMM-yyyy').format(dof);
                                  dof = new DateFormat('EEEE-dd-MMM-yyyy')
                                      .format(picked);
                                });
                              }
                              return dof;
                            },
                          ),
                        ),
                         
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              ]),
                        ),
                      ],
                    ))
                    ],),
          ),
        ),
      ),
    );
  }
}

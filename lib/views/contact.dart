import 'package:flutter/material.dart';
import '../components/mydrawer.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => new _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Contact Us'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      drawer: MyDrawer(),
      body:SingleChildScrollView( 
      child: Column(
        children: <Widget>[
          Text("We value your feedback/sentiments", style: new TextStyle(fontSize: 17.0,fontWeight: FontWeight.w300)),
          Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Card(
                          elevation: 8,
                          color: Colors.white,
                          margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Column(
                            children: <Widget>[
                                   Padding(
                          padding: EdgeInsets.all(15.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Your Email",
                              hoverColor: Colors.lightBlueAccent,
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter a valid name';
                              }
                              return null;
                            },
                            
                          ),
                        ),
                        
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: TextFormField(
                            maxLines: 8,
                            decoration: InputDecoration(
                              labelText:
                                  'Enter your message here',
                              hoverColor: Colors.lightBlueAccent,
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter message';
                              }
                              return null;
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
                                  onPressed: () => SnackBar(
                               content: Text('Searching')),
                                  child: Text('Submit Message'),
                                ),
                                RaisedButton(
                                  color: Colors.red,
                                  textColor: Colors.white,
                                  onPressed: () {
                                    _formKey.currentState.reset();
                                   
                                  },
                                  child: Text('Reset Form'),
                                ),
                              ]),
                        ),
                            ],
                          ),
                        )
                   
                      ],
                    )),
                  Card(
                  elevation: 8,
                  color: Colors.white70,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Column(children: <Widget>[
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text("Phone Number :",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 2.0,
                                      fontSize: 15)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text("0722736262",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 12)),
                            ),
                          ]),
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text("2nd Phone Number :",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 2.0,
                                      fontSize: 15)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text("0729024920",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 12)),
                            ),
                          ]),
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text("Email :",
                                  style: TextStyle(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.italic,
                                  letterSpacing: 2.0,
                                  fontSize: 15)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text("info@rememberthee.com",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 12)),
                            ),
                          ]),
                          Row(children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text("Location :",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 2.0,
                                      fontSize: 15)),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text("Kilome Road, Ojijo house",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                      letterSpacing: 2.0,
                                      fontSize: 12)),
                            ),
                          ]),
                         
                        ]),
                      ],
                    ),
                  ),
                ),
                     ],
      ),
      ),
    );
  }
}

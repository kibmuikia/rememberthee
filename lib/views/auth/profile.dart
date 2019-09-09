import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import '../../models/user.dart';

class ProfilePage extends StatefulWidget {
  final User authenticatedUser;
  ProfilePage({Key key, @required this.authenticatedUser}) : super(key: key);

  @override
  _ProfilePageState createState() => new _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text(widget.authenticatedUser.fname + "'s Profile"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      drawer: new Drawer(
          child: new ListView(children: <Widget>[
        new DrawerHeader(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: <Color>[Colors.deepOrange, Colors.orangeAccent]),
          ),
          child: Container(
            child: Column(
              children: <Widget>[
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  elevation: 10,
                  child: Image.asset('assets/remthee.jpg',
                      width: 100, height: 100),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Rememberthee',
                  ),
                ),
              ],
            ),
          ),
        ),
        new ListTile(
          title: new Text("Welcome To Rememberthee"),
        ),
        new Divider(),
        new ListTile(
            title: new Text("Home"),
            trailing: new Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed('/');
            }),
        new ExpansionTile(
          title: Text("Accounts"),
          trailing: new Icon(Icons.account_circle),
          children: <Widget>[
            ListTile(
                title: Text(
                  "Profile",
                  textAlign: TextAlign.center,
                ),
                trailing: new Icon(Icons.person_outline),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/profile');
                }),
            ListTile(
              title: Text(
                "Logout",
                textAlign: TextAlign.center,
              ),
              trailing: new Icon(Icons.phonelink_erase),
            ),
          ],
        ),
        new ExpansionTile(
            title: Text("Obituary"),
            trailing: new Icon(Icons.folder),
            children: <Widget>[
              ListTile(
                  title: Text("View Obituaries", textAlign: TextAlign.center),
                  trailing: new Icon(Icons.view_list),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/view');
                  }),
              ListTile(
                  title: Text("Post Obituary", textAlign: TextAlign.center),
                  trailing: new Icon(Icons.cloud_upload),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/upload');
                  }),
            ]),
      ])),
      body: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
         
         CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: Text('New'),
                ) ,
                Card(
                      elevation: 8,
                      color: Color.fromARGB(255, 0, 255, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Column(
                               children: <Widget>[
                                 Row(
                                   children:<Widget>[
                                    Padding(
                                    padding: EdgeInsets.all(3.0),
                                    
                                   child:Text("Second Name :",style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 22)
                                  
                                  ), ),
                                     Padding(
                                    padding: EdgeInsets.all(3.0),
                                  child:Text(widget.authenticatedUser.lname,style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 18)
                                  
                                  ), ),
                                  ]
                                 ),
                               Row(
                                   children:<Widget>[
                                    Padding(
                                    padding: EdgeInsets.all(3.0),
                                    
                                   child:Text("First Name :",style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 22)
                                  
                                  ), ),
                                     Padding(
                                    padding: EdgeInsets.all(3.0),
                                  child:Text(widget.authenticatedUser.fname,style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 18)
                                  
                                  ), ),
                                  ]
                                 ),
                                   Row(
                                   children:<Widget>[
                                    Padding(
                                    padding: EdgeInsets.all(3.0),
                                    
                                   child:Text("Email :",style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 22)
                                  
                                  ), ),
                                     Padding(
                                    padding: EdgeInsets.all(3.0),
                                  child:Text(widget.authenticatedUser.email,style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 18)
                                  
                                  ), ),
                                  ]
                                 ),
                                   Row(
                                   children:<Widget>[
                                    Padding(
                                    padding: EdgeInsets.all(3.0),
                                    
                                   child:Text("Phone :",style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 22)
                                  
                                  ), ),
                                     Padding(
                                    padding: EdgeInsets.all(3.0),
                                  child:Text(widget.authenticatedUser.phone,style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 18)
                                  
                                  ), ),
                                  ]
                                 ),
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                   RaisedButton(
                                       child: Text("Edit Profile"),
                                      color: Colors.green,
                                      textColor: Colors.white,
                                       onPressed: () => SnackBar(content: Text('Profile EDIT VIEW')),
                                
                                ),
                                   RaisedButton(
                                       child: Text("Change Password"),
                                      color: Colors.green,
                                      textColor: Colors.white,
                                       onPressed: () => SnackBar(content: Text('Password ChangeView')),
                                
                                ),
                                  ]
                                 )
                              ]
                            ),
                          ],
                        ),
                      ),
                    ),
                 Positioned(
                  top: 150,    
                    child: Card(
                      elevation: 8,
                      color: Color.fromARGB(255, 0, 255, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Column(
                               children: <Widget>[
                                 Row(
                                   children:<Widget>[
                                    Padding(
                                    padding: EdgeInsets.all(3.0),
                                    
                                   child:Text("Second Name :",style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 22)
                                  
                                  ), ),
                                     Padding(
                                    padding: EdgeInsets.all(3.0),
                                  child:Text(widget.authenticatedUser.lname,style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 18)
                                  
                                  ), ),
                                  ]
                                 ),
                               Row(
                                   children:<Widget>[
                                    Padding(
                                    padding: EdgeInsets.all(3.0),
                                    
                                   child:Text("First Name :",style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 22)
                                  
                                  ), ),
                                     Padding(
                                    padding: EdgeInsets.all(3.0),
                                  child:Text(widget.authenticatedUser.fname,style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 18)
                                  
                                  ), ),
                                  ]
                                 ),
                                   Row(
                                   children:<Widget>[
                                    Padding(
                                    padding: EdgeInsets.all(3.0),
                                    
                                   child:Text("Email :",style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 22)
                                  
                                  ), ),
                                     Padding(
                                    padding: EdgeInsets.all(3.0),
                                  child:Text(widget.authenticatedUser.email,style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 18)
                                  
                                  ), ),
                                  ]
                                 ),
                                   Row(
                                   children:<Widget>[
                                    Padding(
                                    padding: EdgeInsets.all(3.0),
                                    
                                   child:Text("Phone :",style: TextStyle(
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 22)
                                  
                                  ), ),
                                     Padding(
                                    padding: EdgeInsets.all(3.0),
                                  child:Text(widget.authenticatedUser.phone,style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.normal,
                                    letterSpacing: 2.0,
                                    
                                    fontSize: 18)
                                  
                                  ), ),
                                  ]
                                 ),
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                   RaisedButton(
                                       child: Text("Edit Profile"),
                                      color: Colors.green,
                                      textColor: Colors.white,
                                       onPressed: () => SnackBar(content: Text('Profile EDIT VIEW')),
                                
                                ),
                                   RaisedButton(
                                       child: Text("Change Password"),
                                      color: Colors.green,
                                      textColor: Colors.white,
                                       onPressed: () => SnackBar(content: Text('Password ChangeView')),
                                
                                ),
                                  ]
                                 )
                              ]
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                 
                ],
              ),
            
          
        
        
        
        
        //child: Text(widget.authenticatedUser.email),
      
    );
  } //end-Widget

} //end-class-_ProfilePageState

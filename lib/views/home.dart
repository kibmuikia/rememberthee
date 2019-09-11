import 'package:flutter/material.dart';
import '../components/mydrawer.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Rememberthee"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        drawer: MyDrawer(),
       
        body:SingleChildScrollView(
          child: Column(
          children: <Widget>[
             Container(
               margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                height: MediaQuery.of(context).size.height * 0.40,
                child: Card(
                  elevation: 8,
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                   child: Container(
                  decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/natiive.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child:Padding(
                   padding: const EdgeInsets.only(top: 50.0),
                   child: Column(
                    children: <Widget>[
                        Text("RememberThee", style: new TextStyle(fontSize: 20.0)),
                        Text("Where life stories go on", style: new TextStyle(fontSize: 17.0)),
                    ],
                  ),
               ),
                   ),
                ),
             ),
              Card(
                  elevation: 8,
                  color: Colors.white24,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    //height: MediaQuery.of(context).size.height * 0.20,
                    child: Text("It's the circle of life And it moves us all Through despair and hopeThrough faith and loveTill we find our place On the path unwinding"
                    ,style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 2.0,
                        fontSize: 15)),
                  ),
                ),
                Card(
          elevation: 8,
          color: Colors.white54,
          child: Container(
            margin: EdgeInsets.fromLTRB(20,10,20,10),
            height: MediaQuery.of(context).size.height * 0.20,
            child: Form(child: Column(
              children: <Widget>[
                Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child:TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Name',
                      hoverColor: Colors.lightBlueAccent,
                      border: OutlineInputBorder(),
                    ),
                    
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Name is null';
                      }
                      return null;
                    },
                    
                  ), 
                  ),
                   Padding(
                    padding: EdgeInsets.all(10),
                    child:RaisedButton(  
                    textColor: Colors.white,
                    color: Colors.lightBlueAccent,
                    child: Text('Search'),
                     onPressed: () => SnackBar(
                                      content: Text('Searching')),
                                
                    ),
                  ),
                ],)
              ],),),
          ),
    ),
               Card(
                      elevation: 8,
                      color: Colors.white24,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    height: MediaQuery.of(context).size.height * 0.20,

                    child: Row(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10),
                        child:RaisedButton(  
                        textColor: Colors.white,
                        color: Colors.lightBlueAccent,
                        child: Text('Login'),
                          onPressed: () => SnackBar(
                                          content: Text('Searching')),
                                    
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child:RaisedButton(  
                        textColor: Colors.white,
                        color: Colors.lightBlueAccent,
                        child: Text('View Obituaries'),
                          onPressed: () => SnackBar(
                                          content: Text('Searching')),
                                    
                        ),
                      ),
                    ],)
                  ),
               ),
              
              ],
                    
            ) ,
        ) 
       );
  } //end-Widget
} //end-class-_MyHomePageState

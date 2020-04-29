import 'package:flutter/cupertino.dart';
import 'new_page.dart';
import 'package:flutter/material.dart';
import 'sign_up.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context)=> new SignupPage(),
        '/newPage':(BuildContext context)=>new NewPage(),
      },

      home: new MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                 child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                  child: Text(
                    "PAGE",
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                  child: Text(
                    ".",
                    style: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
                ],
                    ),
    ),
                Container(
                  padding: EdgeInsets.only(top:35.0, left:20.0, right:20.0),
                  child: Column(
                    children: <Widget>[
                      new TextField(
                        decoration: InputDecoration(
                          labelText:"EMAIL",
                          labelStyle: TextStyle(
                            fontFamily:'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      new TextField(
                        decoration: InputDecoration(
                          labelText:"PASSWORD",
                          labelStyle: TextStyle(
                            fontFamily:'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 5.0),
                   new Container(
                     alignment: Alignment(1.0,0.0),
                     padding: EdgeInsets.only(top: 15.0,left: 20.0,),
                     child: InkWell(
                       child: Text("FORGOT PASSWORD",
                       style :new TextStyle(
                         color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline,
                       ),
                     ),
                   ),
                   ),
              ]
    ),),
          SizedBox(height: 40.0,),
          Container(
            padding: EdgeInsets.only(left: 25.0,right: 25.0),
            height: 40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.greenAccent,
                color: Colors.green,
                elevation: 7.0,
                child: new FlatButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed("/newPage");
                  },
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: new TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',

                      ),
                    ),

                  ),
                ),
              ),
          ),
                  SizedBox(height: 20.0,),
                         Container(
                        padding: EdgeInsets.only(left: 25.0,right: 25.0),
                            height: 40.0,
                      color: Colors.transparent,
                       child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0),
                        ),

                        child: new FlatButton(
                         onPressed: (){},
                           child: Center(
                               child: Text(
                           "Log In With Facebook",
                             style: new TextStyle(
                                color: Colors.black,
                            fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',

                      ),
                      ),

                      ),
                      ),
                      ),
                         ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'NEW TO THIS PAGE ?',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5.0),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed('/signup');
                },
                child: Text('Register',
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
                ),),
              )
            ],
          )

        ],

      ),

    );


  }
}

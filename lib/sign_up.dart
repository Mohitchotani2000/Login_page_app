import 'package:flutter/material.dart';
import 'main.dart';
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/login': (BuildContext context) => new MyHomePage()
        },
    );
  }
}

class SignupPage extends StatefulWidget {

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                    "SIGN-UP",
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
                  SizedBox(height: 20.0),
                  new TextField(
                    decoration: InputDecoration(
                      labelText:"NAME",
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
                  Navigator.of(context).pop('/login');
                },
                child: Center(
                  child: Text(
                    "SIGNUP",
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
        ],

      ),

    );

  }
}

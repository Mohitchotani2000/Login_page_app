import 'package:flutter/material.dart';
import 'main.dart';


class Homepage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/newPage': (BuildContext context) => new MyHomePage()
        },
      );


  }
}

class NewPage extends StatefulWidget {
  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen,
        title: new Text("MY FILES",
          style: new TextStyle(
            color:Colors.white,
            fontSize: 20.0,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      body: new Center(
        child: new Text("No Files Yet",
          style: new TextStyle(
            fontFamily: "Monsterrat",
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage("images/logo.png"),
              ),
              Text(
                'Mohamed',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Android Developer",
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20,
                    color: Colors.teal[100],
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

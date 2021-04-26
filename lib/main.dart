import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Play',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              buildBorderLine(Colors.red),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildSquare(Colors.yellow),
                  buildSquare(Colors.yellow[200]),
                ],
              ),
              buildBorderLine(Colors.blue),
          ],
        ),
        )
      )
    );
  }
}

Widget buildBorderLine(color) {
  return Flexible(
      child: Container(
        color: color,
        width: 100.0,
        margin: EdgeInsets.only(bottom: 20.0),
      ),
  );
}

Widget buildSquare(color) {
  return Container(
    width: 100,
    height: 100,
    color: color,
    margin: EdgeInsets.only(left: 60.0, right: 60.0),
  );
}
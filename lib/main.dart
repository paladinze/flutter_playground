import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  var textList = ['Ze is super super smart!', 'Manny is even better than Ze!'];
  var textIdx = 0;

  void handleClick(int index) {
    setState(() {
      textIdx = index;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("such is life"),
        ),
        body: Column(children: <Widget>[
          Question(textList[textIdx]),
          RaisedButton(
            child: Text("click me!"),
            onPressed: () => handleClick(1),
          ),
          RaisedButton(
            child: Text("click me!"),
            onPressed: () => handleClick(0),
          )
        ],)
      ),
    );
  }
}

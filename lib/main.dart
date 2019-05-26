import 'package:flutter/material.dart';
import 'dart:math';

class BackChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Changing Background",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var colors = [
    Colors.teal,
    Colors.yellow,
    Colors.blueAccent,
    Colors.grey,
    Colors.orange,
    Colors.red,
  ];

  var currentColor = Colors.white;
  var currentButtonColor = Colors.white;

  void changeBackground() {
    int random = Random().nextInt(colors.length);
    //int randomButtonColor = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[random];
      currentButtonColor = colors[random /*randomButtonColor*/
          ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Center(
        child: FlatButton(
          color: currentButtonColor,
          child: Text(
            "Hey there",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
            ),
          ),
          padding: EdgeInsets.fromLTRB(60.0, 80.0, 60.0, 80.0),
          onPressed: changeBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(BackChange());

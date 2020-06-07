import 'package:flutter/material.dart';
import 'dart:math';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int leftDiceeNumber = 1, rightDiceeNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceeNumber = Random().nextInt(6) + 1;
      rightDiceeNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dicee"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$leftDiceeNumber.png'),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$rightDiceeNumber.png'),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

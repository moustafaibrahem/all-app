import 'package:flutter/material.dart';
import 'dart:math';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int leftDiceeNumber = 1, RightDiceeNumber = 1;

  void ChangeDiceFace() {
    setState(() {
      leftDiceeNumber = Random().nextInt(6) + 1;
      RightDiceeNumber = Random().nextInt(6) + 1;
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
                  ChangeDiceFace();
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$RightDiceeNumber.png'),
                onPressed: () {
                  ChangeDiceFace();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

class Forthscreen extends StatefulWidget {
  @override
  _ForthscreenState createState() => _ForthscreenState();
}

class _ForthscreenState extends State<Forthscreen> {
  int numberofball = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: Expanded(
          child: FlatButton(
            child: Image.asset('images/ball$numberofball.png'),
            onPressed: () {
              setState(() {
                numberofball = Random().nextInt(5) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}

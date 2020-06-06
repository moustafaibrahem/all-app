import 'package:all/src/home_sreen.dart';
import 'package:all/src/first_screen.dart';
import 'package:all/src/second_screen.dart';
import 'package:all/src/third_screen.dart';
import 'package:all/src/forth_screen.dart';
import 'package:all/src/fifth_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {
        '/': (context) => HomeScreen(),
        '/first': (context) => FirstScreen(),
        '/second': (context) => Secondscreen(),
        '/third': (context) => ThirdScreen(),
        '/forth': (context) => Forthscreen(),
        '/fifth': (context) => Fifthscreen(),
      },
      initialRoute: '/',
    );
  }
}

import 'package:flutter/material.dart';
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "I AM RICH",
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image(
              image: AssetImage("images/i_am_rich_app_icon.png"),//Image.asset("images/i_am_rich_app_icon.png"),
            ),
          ),
        ),
      ),
    );
  }
}

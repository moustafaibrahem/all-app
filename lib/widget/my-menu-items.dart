import 'package:flutter/material.dart';

class MyMenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.amber,
              size: 20,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
        ),
        myCard(context, Icon(Icons.apps), "I AM RICH App", '/first'),
        myCard(context, Icon(Icons.apps), "MI CARD App", '/second'),
        myCard(context, Icon(Icons.apps), "DICEE App", '/third'),
        myCard(context, Icon(Icons.apps), "MAGIC 8 BALL App", '/forth'),
        myCard(context, Icon(Icons.apps), "XYLOPHONE App", '/fifth'),
        myCard(context, Icon(Icons.apps), "QUIZZLER App", '/sixth'),
        myCard(context, Icon(Icons.apps), "Destini App", '/seventh'),
        myCard(context, Icon(Icons.apps), "BMI Calculator App", '/eighth'),
      ],
    );
  }
}

Card myCard(context, Icon mYicon, String txt, String dist) {
  return Card(
    child: ListTile(
      leading: mYicon,
      title: Text(
        txt,
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(dist);
      },
    ),
  );
}

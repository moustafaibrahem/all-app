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
        MyCard(context, Icon(Icons.apps), "I AM RICH App", '/first'),
        MyCard(context, Icon(Icons.apps), "MI CARD App", '/second'),
        MyCard(context, Icon(Icons.apps), "DICEE App", '/third'),
        MyCard(context, Icon(Icons.apps), "MAGIC 8 BALL App", '/forth'),
        MyCard(context, Icon(Icons.apps), "XYLOPHONE", '/fifth'),
      ],
    );
  }
}

Card MyCard(context, Icon MYicon, String txt, String dist) {
  return Card(
    child: ListTile(
      leading: MYicon,
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

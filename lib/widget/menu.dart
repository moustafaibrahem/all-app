import 'package:all/widget/my-menu-items.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text(
              "moustafa.ibrahem56@gmail.com",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            accountName: Text(
              "Moustafa Ibrahem",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/1.jpg"),
              radius: 40,
            ),
          ),
          MyMenuItems(),
        ],
      ),
    );
  }
}

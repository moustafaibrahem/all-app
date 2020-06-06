import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Card"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage("images/1.jpg"),
                radius: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Moustafa Ibrahem",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 35,
                ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'SourceSansPro',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: MyCard(icon: Icon(Icons.phone), text: "+010 6789 3079"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: MyCard(
                    icon: Icon(Icons.email),
                    text: 'moustafa.ibrahem56@gmail.com'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Card MyCard({Icon icon, String text}) {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    child: ListTile(
      leading: icon,
      title: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'SourceSansPro',
        ),
      ),
    ),
  );
}

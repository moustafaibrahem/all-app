import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:all/utilites/ReusableCard.dart';
import 'package:all/utilites/ReusableColumn.dart';

const heightwidget = 40.0;
const concolor = Color(0xFF1D1E33);
const unconcolor = Color(0xFF111238);
const btncolor = Color(0xFFEB1555);

class Eighthscreen extends StatefulWidget {
  @override
  _EighthscreenState createState() => _EighthscreenState();
}

class _EighthscreenState extends State<Eighthscreen> {
  Color maleCardColor = unconcolor;
  Color femaleCardColor = unconcolor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == unconcolor) {
        maleCardColor = concolor;
      } else {
        maleCardColor = unconcolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardchild: ReusableColumn(
                        icon: Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        txt: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardchild: ReusableColumn(
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                        txt: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Expanded(
              child: ReusableCard(
                color: concolor,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: concolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: concolor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: btncolor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: heightwidget,
          ),
        ],
      ),
    );
  }
}

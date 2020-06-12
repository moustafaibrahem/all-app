import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

class ReusableColumn extends StatelessWidget {
  final Icon icon;
  final String txt;

  ReusableColumn({@required this.icon, this.txt});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 15.0,
        ),
        Text(
          txt,
          style: labelTextStyle,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardchild;
  ReusableCard({@required this.color, this.cardchild});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      margin: EdgeInsets.all(15),
      child: cardchild,
    );
  }
}

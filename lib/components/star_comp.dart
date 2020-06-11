import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final double starSize;
  final double topMargin;
  

  Star(this.starSize, this.topMargin);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topMargin),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: starSize,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String descriptionText;
  final double topMargin;
  final double leftMargin;
  final double rightMargin;

  Description({
    @required this.descriptionText,
    this.topMargin = 20.0,
    this.leftMargin = 20.0,
    this.rightMargin = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: topMargin,
        left: leftMargin,
        right: rightMargin,
      ),
      child: Text(
        descriptionText,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 16.0,
          color: Color(0xFF56575a),
        ),
      ),
    );
  }
}

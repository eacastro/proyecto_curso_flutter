import 'package:flutter/material.dart';

class PhotoUser extends StatelessWidget {
  final double topMargin;
  final double leftMargin;
  final double width;
  final double height;
  final String pathImage;

  PhotoUser({
    this.topMargin = 20.0,
    this.leftMargin = 20.0,
    this.width = 80.0,
    this.height = 80.0,
    @required this.pathImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: topMargin,
        left: leftMargin,
      ),
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );
  }
}

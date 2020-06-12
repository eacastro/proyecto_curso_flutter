import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final double mainSize;
  final double secondarySize;
  final Icon icon;

  CircularButton({
    this.mainSize,
    this.secondarySize,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Container(
          width: (secondarySize == null) ? mainSize : secondarySize,
          height: (secondarySize == null) ? mainSize : secondarySize,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: icon,
        ),
      ),
    );
  }
}

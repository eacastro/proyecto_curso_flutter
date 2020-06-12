import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  final Text text;
  final double width;
  final double height;
  final List<Color> gradientColors;
  final Alignment initialPosition;
  final Alignment finalPosition;
  final Function function;
  final Icon leadingIcon;
  final Icon finalIcon;

  const CustomGradientButton({
    Key key,
    @required this.text,
    @required this.width,
    @required this.height,
    @required this.gradientColors,
    @required this.initialPosition,
    @required this.finalPosition,
    @required this.function,
    @required this.leadingIcon,
    @required this.finalIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: initialPosition,
            end: finalPosition,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(height / 2),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(2, -2),
              blurRadius: height * .1,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            leadingIcon ?? Container(),
            text,
            finalIcon ?? Offstage(),
          ],
        ),
      ),
      onTap: function,
    );
  }
}

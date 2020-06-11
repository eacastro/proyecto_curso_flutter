import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/floating_action_button_green.dart';

class CardText extends StatelessWidget {
  final double cardHeight, cardWidth, topMargin, leftMargin;
  final Widget child;
  final bool addButton;

  CardText({
    this.cardHeight = 200.0,
    this.cardWidth = 200.0,
    this.topMargin = 80.0,
    this.leftMargin = 90.0,
    @required this.child,
    this.addButton = true,
  });

  @override
  Widget build(BuildContext context) {
    var cardContent = <Widget>[
      Container(
        height: cardHeight,
        width: cardWidth,
        margin: EdgeInsets.only(
          top: topMargin,
          left: leftMargin,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0),
            ),
          ],
        ),
        child: child,
      ),
    ];

    if (addButton)
      cardContent.add(
        FloatingActionButtonGreen(
          favorite: true,
        ),
      );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: cardContent,
    );
  }
}

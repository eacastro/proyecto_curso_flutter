import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String pathImage = 'asssets/img/beach.jpeg';
<<<<<<< HEAD
  final double topMargin;
  final double leftMargin;
  final double cardHeight;
  final double cardWidth;
  final bool addButton;

  CardImage(
    this.pathImage, {
    this.leftMargin = 20.0,
    this.topMargin = 80.0,
    this.cardHeight = 350.0,
    this.cardWidth = 250.0,
    this.addButton = true,
  });
=======

  CardImage(this.pathImage);
>>>>>>> 4b144ab85819ca85ab43836b6edd8615763d6bdd

  @override
  Widget build(BuildContext context) {
    var card = Container(
<<<<<<< HEAD
      height: cardHeight,
      width: cardWidth,
      margin: EdgeInsets.only(
        top: topMargin,
        left: leftMargin,
=======
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0,
>>>>>>> 4b144ab85819ca85ab43836b6edd8615763d6bdd
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
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
    );

<<<<<<< HEAD
    var stackContent = <Widget>[card];

    if (addButton)
      stackContent.add(
        FloatingActionButtonGreen(),
      );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: stackContent,
=======
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(),
      ],
>>>>>>> 4b144ab85819ca85ab43836b6edd8615763d6bdd
    );
  }
}

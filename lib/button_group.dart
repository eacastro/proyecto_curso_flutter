import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/components/circular_button.dart';

class ButtonGroup extends StatelessWidget {
  double _mainButtonSize = 55.0;
  double _secondaryButtonSize = 38.0;
  double _iconSize = 40.0;
  Color _iconColor = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    var button1 = CircularButton(
      icon: Icon(
        Icons.turned_in_not,
        color: _iconColor,
      ),
      secondarySize: _secondaryButtonSize,
    );

    var button2 = CircularButton(
      icon: Icon(
        Icons.card_giftcard,
        color: _iconColor,
      ),
      secondarySize: _secondaryButtonSize,
    );

    var button3 = CircularButton(
      icon: Icon(
        Icons.add,
        color: Colors.indigo,
        size: _iconSize,
      ),
      mainSize: _mainButtonSize,
    );

    var button4 = CircularButton(
      secondarySize: _secondaryButtonSize,
      icon: Icon(
        Icons.mail_outline,
        color: _iconColor,
      ),
    );

    var button5 = CircularButton(
      secondarySize: _secondaryButtonSize,
      icon: Icon(
        Icons.person,
        color: _iconColor,
      ),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        button1,
        button2,
        button3,
        button4,
        button5,
      ],
    );
  }
}

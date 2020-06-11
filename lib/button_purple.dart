import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText;

  ButtonPurple({this.buttonText = 'Navigate'});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('Navegando'),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF71A2B6),
              Color(0xFF60B2E5),
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.2, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontFamily: 'Lato',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

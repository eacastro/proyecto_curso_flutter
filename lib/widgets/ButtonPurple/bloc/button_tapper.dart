import 'package:flutter/material.dart';

class ButtonTapper {

  static void showSnack(BuildContext context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Navegando'),
      ),
    );
  }
  
}

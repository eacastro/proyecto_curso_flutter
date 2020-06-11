import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/gradient_back.dart';
import 'package:proyecto_platzi_curso_flutter/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(title: 'Bienvenido'),
        CardImageList(),
      ],
    );
  }
}
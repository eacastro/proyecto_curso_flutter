import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/description_component.dart';
import 'package:proyecto_platzi_curso_flutter/review.dart';
import 'package:proyecto_platzi_curso_flutter/review_list.dart';
import 'package:proyecto_platzi_curso_flutter/star_border.dart';
import 'package:proyecto_platzi_curso_flutter/star_comp.dart';
import 'package:proyecto_platzi_curso_flutter/star_half.dart';
import 'package:proyecto_platzi_curso_flutter/widgets/ButtonPurple/ui/widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_half = StarHalf();

    final star_border = StarBorder();

    final description = Description(descriptionText: descriptionPlace,);

    final star = Star(
      25.0,
      323.0,
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_half,
          ],
        ),
      ],
    );

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        ButtonPurple(),
      ],
    );

    return content;
  }
}

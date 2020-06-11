import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/description_place.dart';
import 'package:proyecto_platzi_curso_flutter/header_appbar.dart';
import 'package:proyecto_platzi_curso_flutter/review_list.dart';

class HomeTrips extends StatelessWidget {
  final String descriptionText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(
              'Bahamas',
              4,
              descriptionText,
            ),
            ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
}

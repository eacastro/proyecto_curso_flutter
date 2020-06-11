import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Review(
          'assets/img/people.jpg',
          'Varuna Yasas',
          '1 review - 5 photos',
          'There is an amazing place in Sri lanka',
          5,
        ),

        Review(
          'assets/img/woman1.jpg',
          'Sarah Vandella',
          '1 review - 5 photos',
          'quia molestiae reprehenderit quasi',
          5,
        ),


      ],
    );
  }
}

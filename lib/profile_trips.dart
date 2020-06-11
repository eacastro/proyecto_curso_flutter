import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/card_image.dart';
import 'package:proyecto_platzi_curso_flutter/gradient_back.dart';
import 'package:proyecto_platzi_curso_flutter/header_profile.dart';

class ProfileTrips extends StatelessWidget {
  final String usName;
  final String profilePath;
  final String email;

  ProfileTrips({
    this.usName = 'Edisson Castro',
    this.profilePath,
    this.email = 'example@domainexample.com',
  });

  @override
  Widget build(BuildContext context) {
    var header = GradientBack(
      title: 'Perfil',
      containerHeight: 400.0,
      headerProfile: HeaderProfile(
        imageProfilePath: 'assets/img/edi.jpg',
        email: email,
        userName: usName,
      ),
    );

    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            header,
            CardImage('assets/img/beach.jpeg'),
          ],
        ),
      ],
    );
  }
}

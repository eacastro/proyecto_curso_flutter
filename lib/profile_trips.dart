import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proyecto_platzi_curso_flutter/card_image.dart';
import 'package:proyecto_platzi_curso_flutter/card_text.dart';
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
      containerHeight: 430.0,
      headerProfile: HeaderProfile(
        imageProfilePath: 'assets/img/edi.jpg',
        email: email,
        userName: usName,
      ),
    );

    var cardTextContent = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 40.0,
          ),
          child: Text(
            'Lorem ipsum dolor',
            style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 40.0,
          ),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis.',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 14.0,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            top: 10.0,
            left: 10.0,
            right: 40.0,
          ),
          child: Text(
            'Nullam dignissim sapien.',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 14.0,
              color: Colors.orangeAccent,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );

    var listViewContent = <Widget>[
      header,
      Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              CardImage(
                'assets/img/beach.jpeg',
                topMargin: 320.0,
                cardWidth: 320.0,
                cardHeight: 200.0,
                addButton: false,
              ),
              CardText(
                topMargin: 470.0,
                cardHeight: 140.0,
                cardWidth: 250.0,
                leftMargin: 55.0,
                child: cardTextContent,
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              CardImage(
                'assets/img/beach.jpeg',
                topMargin: 50.0,
                cardWidth: 320.0,
                cardHeight: 200.0,
                addButton: false,
              ),
              CardText(
                topMargin: 190.0,
                cardHeight: 140.0,
                cardWidth: 250.0,
                leftMargin: 55.0,
                child: cardTextContent,
              ),
            ],
          ),
        ],
      ),
    ];

    return ListView(
      children: <Widget>[
        Stack(
          children: listViewContent,
        ),
      ],
    );
  }
}

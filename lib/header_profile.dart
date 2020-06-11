import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/button_group.dart';
import 'package:proyecto_platzi_curso_flutter/photo_user.dart';
import 'package:proyecto_platzi_curso_flutter/user_details.dart';

class HeaderProfile extends StatelessWidget {
  final String imageProfilePath, userName, email;

  HeaderProfile({
    @required this.imageProfilePath,
    @required this.email,
    @required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    var userProfileDetails = <Widget>[
      Container(
        margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          bottom: 5.0,
        ),
        child: Text(
          userName,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Lato',
            fontSize: 18.0,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          left: 20.0,
          bottom: 5.0,
        ),
        child: Text(
          email,
          style: TextStyle(
            color: Colors.white38,
            fontFamily: 'Lato',
            fontSize: 14.0,
          ),
        ),
      ),
    ];

    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 25.0),
              child: Row(
                children: <Widget>[
                  PhotoUser(
                    pathImage: imageProfilePath,
                    leftMargin: 3.0,
                  ),
                  UserDetails(
                    details: userProfileDetails,
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 40.0),
          child: ButtonGroup(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proyecto_platzi_curso_flutter/components/star_comp.dart';
import 'package:proyecto_platzi_curso_flutter/photo_user.dart';
import 'package:proyecto_platzi_curso_flutter/user_details.dart';

class Review extends StatelessWidget {
  String pathImage;
  String name;
  String details;
  String comment;
  int numberStars;

  Review(
      this.pathImage, this.name, this.details, this.comment, this.numberStars);

  @override
  Widget build(BuildContext context) {
    var userStar = Star(
      20.0,
      0.0,
    );

    var userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: 'Lato',
        ),
      ),
    );

    var userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: 'Lato',
              color: Color(0xFFa3a5a7),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 10.0,
          ),
          child: Row(
            children: <Widget>[
              userStar,
              userStar,
              userStar,
              userStar,
              userStar,
            ],
          ),
        ),
      ],
    );

    var userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: 'Lato',
          color: Color(0xFFa3a5a7),
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    var userDetails = UserDetails(
      details: [
        userName,
        userInfo,
        userComment,
      ],
    );

    var photo = PhotoUser(
      pathImage: pathImage,
    );

    return Container(
      margin: EdgeInsets.only(
        bottom: 50.0,
      ),
      child: Row(
        children: <Widget>[
          photo,
          userDetails,
        ],
      ),
    );
  }
}

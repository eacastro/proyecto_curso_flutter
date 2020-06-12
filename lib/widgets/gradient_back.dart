import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/header_profile.dart';

class GradientBack extends StatelessWidget {
  final String title;
  final HeaderProfile headerProfile;
  final String imageProfilePath;
  final String email;
  final String userName;
  final double containerHeight;

  GradientBack({
    this.title = 'Popular',
    this.headerProfile,
    this.imageProfilePath,
    this.email,
    this.userName,
    this.containerHeight = 250.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      child: headerProfile == null
          ? Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    top: 50.0,
                    left: 20.0,
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                headerProfile,
              ],
            ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}

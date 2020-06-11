import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  /* var _isFav = false; */
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    void onPressedFav() {
      setState(
        () {
          favorite = !favorite;
        },
      );

      Scaffold.of(context).showSnackBar(
        SnackBar(
          content:
              Text((favorite ? "Quitaste de " : "Agregaste a ") + "favoritos"),
        ),
      );
    }

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      child: Icon(
        favorite ? Icons.favorite : Icons.favorite_border,
      ),
      onPressed: onPressedFav,
    );
  }
}

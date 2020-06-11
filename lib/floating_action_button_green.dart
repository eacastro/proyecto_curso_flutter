import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  final bool favorite;

  FloatingActionButtonGreen({
    this.favorite = false,
  });

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen(favorite: favorite);
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  
  bool favorite;

  _FloatingActionButtonGreen({this.favorite});

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

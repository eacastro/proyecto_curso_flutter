import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:proyecto_platzi_curso_flutter/home_trips.dart';
import 'package:proyecto_platzi_curso_flutter/profile_trips.dart';
import 'package:proyecto_platzi_curso_flutter/search_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Color(0x33FFFFFF),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo),
              title: Text('Inicio'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo),
              title: Text('Buscar'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo),
              title: Text('Perfil'),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (_) => HomeTrips());
              break;
            case 1:
              return CupertinoTabView(builder: (_) => SearchTrips());
              break;
            case 2:
              return CupertinoTabView(builder: (_) => ProfileTrips());
              break;
          }
        },
      ),
    );
  }
}

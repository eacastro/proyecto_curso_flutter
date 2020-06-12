import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/header_appbar.dart';
import 'package:proyecto_platzi_curso_flutter/home_trips.dart';
import 'package:proyecto_platzi_curso_flutter/platzi_trips.dart';
import 'package:proyecto_platzi_curso_flutter/platzi_trips_cupertino.dart';
import 'package:proyecto_platzi_curso_flutter/review_list.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        child: PlatziTripsCupertino(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: HomeTrips(),
      ),
    );
  }
}

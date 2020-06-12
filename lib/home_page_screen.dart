import 'package:flutter/material.dart';
import 'package:proyecto_platzi_curso_flutter/custom_gradient_button.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platzi'),
      ),
      body: Center(
        child: CustomGradientButton(
          text: Text('Colombia'),
          width: 150.0,
          height: 40.0,
          gradientColors: [
            Colors.yellow,
            Colors.blue,
            Colors.red,
          ],
          initialPosition: Alignment.centerLeft,
          finalPosition: Alignment.centerRight,
          function: () => print(
            '¡Hola desde mi casa!',
          ),
          leadingIcon: Icon(Icons.person),
          finalIcon: Icon(Icons.chat),
        ),
      ),
    );
  }
}

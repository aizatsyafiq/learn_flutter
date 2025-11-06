import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 22, 34, 103),
          Color.fromARGB(255, 65, 81, 171),
        ),
      ),
    ),
  );
}

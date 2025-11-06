import 'package:flutter/material.dart';

class TextStyleWhiteLarge extends StatelessWidget {
  const TextStyleWhiteLarge(this.outputText, {super.key});

  // is needed to get variable passed here. Then reference as this.varname to the contructor
  // contructor and build function below is totally separate even though it is on the same class
  final String outputText;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}

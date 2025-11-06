import 'package:flutter/material.dart';
// import 'package:first_app/textstyle_whitelarge.dart';
import 'package:first_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  // constuctor class for initialization. StatelessWidget requires key which
  // GradientContainer will get from super key
  const GradientContainer(this.gradientStart, this.gradientEnd, {super.key});

  final Color gradientStart;
  final Color gradientEnd;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            gradientStart,
            gradientEnd,
            // const Color.fromARGB(255, 30, 44, 124),
            // const Color.fromARGB(255, 65, 81, 171),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

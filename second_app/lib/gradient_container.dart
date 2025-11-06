import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.startQuiz, {
    super.key,
    this.colors = const [
      Color.fromARGB(255, 22, 34, 103),
      Color.fromARGB(255, 65, 81, 171),
    ],
  });

  final List<Color> colors;

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(155, 255, 255, 255),
            ),
            SizedBox(
              height: 56.0,
            ),
            Text(
              'Learn Flutter the FUN way!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 28.0,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue[900],
              ),
              icon: Icon(
                Icons.arrow_right_rounded,
                size: 40,
              ),
              label: const Text(
                'Start Quiz',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

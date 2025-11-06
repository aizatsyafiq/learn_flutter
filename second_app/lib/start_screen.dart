import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/gradient_container.dart';
import 'package:second_app/quiz_screen.dart';
import 'package:second_app/result_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
          chosenAnswer: selectedAnswers,
          redoQuiz: switchScreen,
        );
        selectedAnswers = [];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    activeScreen = GradientContainer(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuizScreen(onSelectAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}

/**
 * Another way of changing active screen is:
 * 1. Instead of Widget? activeScreen -> var activeScreen = 'start-screen' (or gradient-container for this case)
 * 2. Remove initState()
 * 3. activeScreen = 'quiz-screen' inside setState()
 * 4. Instead of referencing only the variable name "activeScreen" in build(),
 * do something like this:
 * body: activeScreen == 'start-screen' ? GradientContainer(SwitchScreen) : const QuizScreen()
 * So, if true, returns GradientContainer(SwitchScreen)
 * 
 * Length of code when is called here can be reduced by checking earlier in build():
 * 1. In build(), before return body,
 * 2. Widget screenWidget = GradientContainer(switchScreen)
 * 3. if (activeScreen == 'quiz-screen') { screenWidget = const QuizScreen(); }
 * 
 * SwitchScreen here is passing the function name for the button to switch screen in GradientContainer,
 * which QuizScreen doesn't need
 */

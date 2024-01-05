import 'package:flutter/material.dart';
import 'package:quit_app/home.dart';
import 'package:quit_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'home-page';

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = Homepage(switchScreen);

    if (activeScreen == 'quiz-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 86, 0, 144),
                Color.fromARGB(255, 99, 7, 185)
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

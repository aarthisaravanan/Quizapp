import 'package:flutter/material.dart';
import 'package:quiz_app/Gradientcontainer.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/resultscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var Activescreen = 'start-screen';

  void switchscreen() {
    setState(() {
      Activescreen = 'questions-screen';
    });
  }

  void chooseanswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        Activescreen = 'resultscreen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      Activescreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = GradientContainer(switchscreen);
    if (Activescreen == 'questions-screen') {
      screenWidget = Question(onSelectAnswer: chooseanswer);
    }
    if (Activescreen == 'resultscreen') {
      screenWidget =
          ResultsScreen(chosenAnswers: selectedAnswers, onRestart: restartQuiz);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 73, 34, 144),
              Color.fromARGB(255, 73, 34, 144)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: screenWidget,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen.dart';

import 'quiz.dart';
import 'result_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  final _quizList = [
    Quiz(
      "What is you fav color?",
      ["Red", "Green", "Black", "Yellow"],
      "Black",
    ),
    Quiz(
      "What is you fav food?",
      ["Chicken", "Mutton", "Biryani", "Fish"],
      "Biryani",
    ),
    Quiz(
      "What is you fav Programming Language?",
      ["TypeScript", "Kotlin", "Java", "Dart"],
      "Dart",
    ),
  ];

  var _quizCount = 0;
  var _resultCount = 0;

  void _onOptionButtonPressHandler(String answer, String option) {
    setState(() {
      _quizCount += 1;
      answer == option ? _resultCount += 1 : _resultCount += 0;
    });
  }

  void _resetQuestionHandler() {
    setState(() {
      _quizCount = 0;
      _resultCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
          ),
        ),
        body: _quizCount < _quizList.length
            ? QuizScreen(
                _quizList,
                _quizCount,
                _onOptionButtonPressHandler,
              )
            : ResultScreen(
                _resultCount,
                _resetQuestionHandler,
              ),
      ),
    );
  }
}

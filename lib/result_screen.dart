import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int _score;
  final Function _resetQuestionHandler;

  ResultScreen(this._score, this._resetQuestionHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Your total score is ${_score}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: _resetQuestionHandler,
            child: Text(
              "Restart Quiz!",
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

import 'answer_button_widget.dart';
import 'question_widget.dart';

class QuizScreen extends StatelessWidget {
  final List<Quiz> _quizList;
  final int _quizCount;
  final Function _onOptionButtonPressHandler;

  const QuizScreen(
    this._quizList,
    this._quizCount,
    this._onOptionButtonPressHandler,
  );

  @override
  Widget build(BuildContext context) {
    var _answer = _quizList[_quizCount].answer;

    return Column(
      children: [
        QuestionWidget(
          _quizList[_quizCount].question,
        ),
        ..._quizList[_quizCount].options.map(
              (_option) => AnswerButtonWidget(
                _option,
                () => _onOptionButtonPressHandler(
                  _answer,
                  _option,
                ),
              ),
            ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String _question;

  QuestionWidget(this._question);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _question,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
    );
  }
}

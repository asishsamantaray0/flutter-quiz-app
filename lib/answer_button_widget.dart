import 'package:flutter/material.dart';

class AnswerButtonWidget extends StatelessWidget {
  final String _optionText;
  final Function _onOptionButtonPressHandler;

  AnswerButtonWidget(this._optionText, this._onOptionButtonPressHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _onOptionButtonPressHandler,
        child: Text(_optionText),
        style: ButtonStyle(),
      ),
    );
  }
}

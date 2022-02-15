class Quiz {
  final String _question;
  final List<String> _options;
  final String _answer;

  Quiz(this._question, this._options, this._answer);

  String get answer => _answer;

  List<String> get options => _options;

  String get question => _question;
}

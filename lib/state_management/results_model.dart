import 'package:flutter/foundation.dart';

class ResultsModel extends ChangeNotifier {
  double _results = 0.0;
  String _userInput = '';

  String get userInput => _userInput;

  set userInput(String value) {
    _userInput = value;
    notifyListeners();
  }

  double get results => _results;

  set results(double value) {
    _results = value;
    notifyListeners();
  }
}
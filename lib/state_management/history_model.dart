import 'package:flutter/foundation.dart';

class HistoryModel extends ChangeNotifier{
  late Map<String, String> _history = <String, String>{};

  Map<String, String> get history => _history;

  void setHistory(String key, String value){
    if(_history.length == 10){
      var oldestKey = _history.keys.first;
      _history.remove(oldestKey);
    }
    _history[key] = value;
    notifyListeners();
  }

  set history(Map<String, String> value) {
    _history = value;
    notifyListeners();
  }
}
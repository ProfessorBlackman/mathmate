import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesRepository{
  final String key = 'history';

  Future<void> store(Map<String, String> map) async {
    final prefs = await SharedPreferences.getInstance();

    final jsonString = jsonEncode(map);
    prefs.setString(key, jsonString);
  }

  Future<Map<String, String>> retrieve() async{
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString('history');
    if(jsonString != null){
      return jsonDecode(jsonString);
    }else {
      return {};
    }
  }
}
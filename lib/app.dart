import 'package:flutter/material.dart';
import 'package:mathmate/home.dart';
import 'package:mathmate/state_management/history_model.dart';
import 'package:mathmate/storage/PrefRepository.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    HistoryModel historyModel = Provider.of<HistoryModel>(context, listen: false);
    loadHistory(historyModel);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }

  Future<void> loadHistory(HistoryModel historyModel) async {
    SharedPreferencesRepository repository = SharedPreferencesRepository();
    historyModel.history = await repository.retrieve() ;

  }
}
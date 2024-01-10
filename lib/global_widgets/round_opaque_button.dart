import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:mathmate/state_management/history_model.dart';
import 'package:mathmate/storage/PrefRepository.dart';
import 'package:provider/provider.dart';

import '../state_management/results_model.dart';

class RoundOpaqueButton extends StatelessWidget {
  final Widget buttonChild;

  const RoundOpaqueButton({super.key, required this.buttonChild});

  @override
  Widget build(BuildContext context) {
    var resultsModel = Provider.of<ResultsModel>(context, listen: false);
    var historyModel = Provider.of<HistoryModel>(context, listen: false);
    return ElevatedButton(
        onPressed: () {
          var userInput = resultsModel.userInput.replaceAll("%", "/100");
          Parser parser = Parser();
          Expression expression = parser.parse(userInput);
          ContextModel contextModel = ContextModel();
          double eval = expression.evaluate(EvaluationType.REAL, contextModel);
          resultsModel.results = eval.toDouble();
          historyModel.setHistory(DateUtils.dateOnly(DateTime.now()).toString().split(' ')[0], "${resultsModel.userInput} = ${resultsModel.results}");
          SharedPreferencesRepository repository = SharedPreferencesRepository();
          repository.store(historyModel.history);
          // resultsModel.userInput = '';
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purpleAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        child: buttonChild);
  }
}

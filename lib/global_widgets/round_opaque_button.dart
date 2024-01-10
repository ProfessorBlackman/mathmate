import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:provider/provider.dart';

import '../state_management/results_model.dart';

class RoundOpaqueButton extends StatelessWidget {
  final Widget buttonChild;

  const RoundOpaqueButton({super.key, required this.buttonChild});

  @override
  Widget build(BuildContext context) {
    var resultsModel = Provider.of<ResultsModel>(context, listen: false);
    return ElevatedButton(
        onPressed: () {
          Parser parser = Parser();
          Expression expression = parser.parse(resultsModel.userInput);
          ContextModel contextModel = ContextModel();
          double eval = expression.evaluate(EvaluationType.REAL, contextModel);
          resultsModel.results = eval.toDouble();
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

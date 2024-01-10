import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state_management/results_model.dart';

class RoundTranslucentButton extends StatelessWidget {
  final Widget buttonChild;
  final String value;

  const RoundTranslucentButton({super.key, required this.buttonChild, required this.value});

  @override
  Widget build(BuildContext context) {
    var resultsModel = Provider.of<ResultsModel>(context, listen: false);
    return ElevatedButton(
        onPressed: () {
          if(resultsModel.results != 0.0){
            resultsModel.userInput = '';
          }
          resultsModel.userInput = '${resultsModel.userInput}$value';
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        child: buttonChild);
  }
}

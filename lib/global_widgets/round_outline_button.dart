import 'package:flutter/material.dart';
import 'package:mathmate/state_management/results_model.dart';
import 'package:provider/provider.dart';

class RoundOutlineButton extends StatelessWidget {
  final Widget buttonChild;
  final VoidCallback onPressed;

  const RoundOutlineButton({super.key, required this.buttonChild, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var resultsModel = Provider.of<ResultsModel>(context, listen: false);
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: const BorderSide(color: Colors.purpleAccent),
          ),
        ),
        child: buttonChild);
  }
}

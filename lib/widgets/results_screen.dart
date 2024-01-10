import 'package:flutter/material.dart';
import 'package:mathmate/state_management/results_model.dart';
import 'package:provider/provider.dart';

class ResultsScreen extends StatefulWidget {
  String result = '0';

  ResultsScreen({super.key});

  @override
  ResultsScreenState createState() => ResultsScreenState();
}

class ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Consumer<ResultsModel>(
          builder: (context, resultsModel, child){
            return Container(
              height: 150,
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerRight,
              color: Colors.white12,
              child: Text(
                resultsModel.userInput,
                style: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),

        const Divider(
          height: 10,
        ),

        Consumer<ResultsModel>(
          builder: (context, resultsModel, child){
            return Container(
              height: 140,
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerRight,
              color: Colors.white12,
              child: Text(
                "${resultsModel.results}",
                style: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

}
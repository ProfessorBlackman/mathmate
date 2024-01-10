import 'package:flutter/material.dart';
import 'package:mathmate/global_widgets/round_opaque_button.dart';
import 'package:mathmate/global_widgets/round_outline_button.dart';
import 'package:mathmate/global_widgets/round_translucent_button.dart';
import 'package:provider/provider.dart';

import '../state_management/results_model.dart';

class InputArea extends StatefulWidget {
  const InputArea({super.key});

  @override
  InputAreaState createState() => InputAreaState();
}

class InputAreaState extends State<InputArea> {
  @override
  Widget build(BuildContext context) {
    var resultsModel = Provider.of<ResultsModel>(context, listen: false);
    return Container(
      height: 500,
      padding: const EdgeInsets.all(16.0),
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(20.0), // Set the radius here
      ),
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          RoundOutlineButton(
            buttonChild: const Text(
              "<-",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ), onPressed: () {
            var userInput = resultsModel.userInput;
            if (userInput != ''){
              resultsModel.userInput = userInput.substring(0, userInput.length - 1);
            }
          },
          ),
          RoundOutlineButton(
              buttonChild: const Text(
            "C",
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ), onPressed: () {
            resultsModel.userInput = '';
            resultsModel.results = 0.0;
          },),
          const RoundTranslucentButton(
            buttonChild: Text(
              "%",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "%",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "/",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "/",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "7",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "7",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "8",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "8",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "9",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "9",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "x",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "*",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "4",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "4",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "5",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "5",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "6",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "6",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "-",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "-",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "1",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "1",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "2",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "2",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "3",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "3",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "+",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "+",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              "0",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: "0",
          ),
          const RoundTranslucentButton(
            buttonChild: Text(
              ",",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            value: ",",
          ),
          const RoundOpaqueButton(
              buttonChild: Text(
            "=",
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          )),
        ],
      ),
    );
  }
}

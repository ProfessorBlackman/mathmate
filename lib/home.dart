import 'package:flutter/material.dart';
import 'package:mathmate/widgets/input_area.dart';
import 'package:mathmate/widgets/results_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResultsScreen(),
          const InputArea(),
        ],
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:mathmate/app.dart';
import 'package:flutter/services.dart';
import 'package:mathmate/state_management/results_model.dart';
import 'package:provider/provider.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  runApp(
    ChangeNotifierProvider<ResultsModel>(
        create: (context) => ResultsModel(),
      child: const App(),
    ),
      
  );
}
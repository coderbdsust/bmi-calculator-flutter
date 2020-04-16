import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screen/result_page.dart';
import 'package:flutter/material.dart';
import 'screen/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
//      ),
//      initialRoute: UI_SCREEN.INPUT_PAGE.toString(),
//      routes: {
//        UI_SCREEN.INPUT_PAGE.toString() : (context) => InputPage(),
//        UI_SCREEN.RESULT_PAGE.toString() : (context) => BMIResultPage(),
//      },
    );
  }
}

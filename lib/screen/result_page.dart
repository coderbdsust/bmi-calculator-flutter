import 'package:bmi_calculator/bmi_brain.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class BMIResultPage extends StatelessWidget {
  BMIResultPage({this.brain});

  final BmiBrain brain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'BMI RESULT',
                textAlign: TextAlign.center,
                style: kLabelTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    brain.getBmiTextResult(),
                    style: kLabelResultTextStyle,
                  ),
                  Text(
                    brain.getBMI(),
                    style: kLabelNumberTextStyle,
                  ),
                  Text(
                    brain.getInterpretation(),
                    textAlign: TextAlign.center,
                    style: kLabelResultSubTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 20.0),
                width: double.infinity,
                height: kBottomContainerHeight,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: kLabelLargeBtnTextStyle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

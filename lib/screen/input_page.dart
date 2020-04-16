import 'package:bmi_calculator/bmi_brain.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/round_button.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/screen/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../components/gender_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderType;
  int height = 50;
  int weight = 30;
  int age = 12;

  void changeWeight(int value) {
    setState(() {
      if (weight + value >= 0) weight += value;
    });
  }

  void changeAge(int value) {
    setState(() {
      if (age + value >= 0) age += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderType = Gender.MALE;
                      });
                    },
                    color: genderType == Gender.MALE
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: GenderIcon(
                      icon: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderType = Gender.FEMALE;
                      });
                    },
                    color: genderType == Gender.FEMALE
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: GenderIcon(
                      icon: FontAwesomeIcons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kLabelNumberTextStyle,
                      ),
                      SizedBox(
                        width: 2.0,
                      ),
                      Text(
                        'inch',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 6.0,
                        max: 120,
                        onChanged: (double changedValue) {
                          setState(() {
                            height = changedValue.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT (KG)',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kLabelNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedButton(
                              onPress: () {
                                changeWeight(-1);
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedButton(
                              onPress: () {
                                changeWeight(1);
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kLabelNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedButton(
                              onPress: () {
                                changeAge(-1);
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedButton(
                              onPress: () {
                                changeAge(1);
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onPress: () {
              BmiBrain bmiBrain =
                  BmiBrain(weight: weight, height: height, age: age);
              bmiBrain.calculateBMI();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResultPage(
                      brain: bmiBrain,
                    ),
                  ));
            },
            title: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}

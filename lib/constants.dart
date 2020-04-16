import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kActiveCardColor = Color(0xFF1D1E33);
const kInActiveCardColor = Color(0xFF111323);
const kBottomContainerColor = Colors.red;

const kLabelTextStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontSize: 18.0,
);

const kLabelNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLabelLargeBtnTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kLabelTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);

const kLabelResultTextStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kLabelResultSubTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
);


enum Gender { MALE, FEMALE }

enum UI_SCREEN{
  INPUT_PAGE,
  RESULT_PAGE
}
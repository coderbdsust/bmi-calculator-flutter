import 'dart:math';

class BmiBrain {
  final int weight;
  final int age;
  final int height;
  double _bmi;

  BmiBrain({this.height, this.weight, this.age});

  void calculateBMI() {
    double height = this.height * 0.0254;
    _bmi = weight / pow(height, 2);
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getBmiTextResult() {
    if (_bmi >= 25.0) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.0) {
      return "You have a higher than normal body weight.\nTry to exercise more...";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Good Job!";
    } else {
      return "You have a lower than normal body weight.\nYou can eat bit more...";
    }
  }
}

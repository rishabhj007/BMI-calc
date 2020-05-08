import 'package:flutter/cupertino.dart';

class CalcBrain {
  final int height;
  final int weight;

  CalcBrain({@required this.weight, @required this.height});

  double _bmi;

  String calculateBMI() {
    _bmi = (weight * 10000.0) / (height * height);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25)
      return "Overweight";
    else if (_bmi > 18.5)
      return "Normal";
    else
      return "Underweight";
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return "You should exercise more";
    else if (_bmi > 18.5)
      return "You are just Fine";
    else
      return "You should probably increase your diet";
  }
}

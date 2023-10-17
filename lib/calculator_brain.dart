import 'dart:math';

// Class to calculate the BMI for given height and weight.
// BMI is a private value, can't be accessed outside the class.
class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 0;

  // Constructor to get height and weight for calculating BMI.
  CalculatorBrain({required this.height, required this.weight});

  // This function calculates the BMI and returns BMI value.
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  // This function returns the result of the BMI Calculation.
  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  // This function returns the BMI Statement based upon the BMI value.
  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more';
    } else if (_bmi >= 18.5) {
      return 'Great!! You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. Try to eat more.';
    }
  }
}

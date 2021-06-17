import 'dart:math';

class BMI {
  BMI({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String BMICAL() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String Instruction() {
    if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5 && _bmi < 25)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String msg() {
    if (_bmi >= 25)
      return 'You have a higher than normal body weight\n Stay Fit, Exercising may work.';
    else if (_bmi > 18.5 && _bmi < 25)
      return 'Bravo! You are all fit and healthy.';
    else
      return 'You have a lower than normal body weight\n May be you should eat a bit more and have a balance diet.';
  }
}

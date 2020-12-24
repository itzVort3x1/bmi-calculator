import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;
  double _BMI;

  String CalculateBMI(){
    _BMI = weight / pow(height/100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult(){
    if(_BMI >= 25){
      return 'Overweight';
    }else if(_BMI > 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterPretation(){
    if(_BMI >= 25){
      return 'You have higher than normal body weight, try to exercise more!';
    }else if(_BMI > 18.5){
      return 'You have a normal body weight, good job!';
    }else {
      return 'You have a lower than normal body weight, you should eat more!';
    }
  }
}
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late final double _calcResult = weight / pow(height / 100, 2);

  String weightResult() {
    return _calcResult.toStringAsFixed(1);
  }

  String weightEvaluation() {
    if (_calcResult >= 25) {
      return 'OVERWEIGHT';
    } else if (_calcResult > 18) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String weightTexts() {
    if (_calcResult >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more!';
    } else if (_calcResult > 18) {
      return 'You have a normal body weight. Good job!!';
    } else {
      return 'You have a lower than normal body weight. Try to eat more!';
    }
  }
}

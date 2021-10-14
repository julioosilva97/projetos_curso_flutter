import 'dart:math';

class CalculatorBrain {
  late final int height;
  late final int weight;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Acima do peso';
    } else if (_bmi > 10.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Mano, vc precisa parar de comer basteira, começa ir pra academia perder essas gorduras para não morrer de colesteol';
    } else if (_bmi > 10.5) {
      return 'Isso ai men, não perde o foco, tá ótimo :)';
    } else {
      return 'Se vc ficar um dia sem comer, vai desaparecer, tá parecendo o seu madruga, bora comer um arroz e feijão jovem';
    }
  }
}

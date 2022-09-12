class Calculator {
  Calculator({required this.h, required this.w});

  int h = 0;
  int w = 0;
  double _bmi = 0;

  double calcBMI() {
    _bmi = (w / ((h * 0.01) * (h * 0.01))).toDouble();
    print('$h, $w, $_bmi');
    return _bmi;
  }

  String getResult() {
    return (_bmi >= 25)
        ? 'OVERWEIGHTED'
        : (_bmi > 18.5)
            ? 'NORMAL'
            : 'UNDERWEIGHTED';
  }

  String getAdvice() {
    return (_bmi >= 25)
        ? 'You have more body weight. Do exercise!'
        : (_bmi > 18.5)
            ? 'You have normal body weight. Stay Fit!'
            : 'You have less body wieght. Be foody!';
  }
}

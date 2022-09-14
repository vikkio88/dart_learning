import 'dart:math';

class DifferenceOfSquares {
  int differenceOfSquares(int max) {
    num sumOfSquare = 0;
    num sum = 0;
    for (var i = 1; i <= max; i++) {
      sum += i;
      sumOfSquare += pow(i, 2);
    }

    final num squareOfSums = pow(sum, 2);
    return (squareOfSums - sumOfSquare).toInt();
  }

  int squareOfSum(int max) {
    num sum = 0;
    for (var i = 1; i <= max; i++) {
      sum += i;
    }
    return (pow(sum, 2)).toInt();
  }

  int sumOfSquares(int max) {
    num sumOfSquare = 0;
    for (var i = 1; i <= max; i++) {
      sumOfSquare += pow(i, 2);
    }
    return sumOfSquare.toInt();
  }
}

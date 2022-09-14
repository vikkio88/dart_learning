import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    var digits = '$number'.split('').map((String e) => int.parse(e)).toList();

    var power = digits.length;

    num sum = 0;
    for (var digit in digits) {
      sum += pow(digit, power);
    }

    return sum == number;
  }
}

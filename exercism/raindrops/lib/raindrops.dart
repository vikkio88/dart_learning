class Raindrops {
  final factors = {
    3: 'Pling',
    5: 'Plang',
    7: 'Plong',
  };
  String convert(int number) {
    var result = '';
    for (var f in factors.entries) {
      if (number % f.key == 0) {
        result += f.value;
      }
    }

    if (result.isEmpty) {
      result = '$number';
    }

    return result;
  }
}

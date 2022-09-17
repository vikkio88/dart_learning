import 'dart:math';

class SpaceAge {
  static const int SECONDS_IN_EARTH_YEAR = 31557600;
  final planetsMap = {
    'Mercury': 0.2408467 * SECONDS_IN_EARTH_YEAR,
    'Venus': 0.61519726 * SECONDS_IN_EARTH_YEAR,
    'Earth': 1 * SECONDS_IN_EARTH_YEAR,
    'Mars': 1.8808158 * SECONDS_IN_EARTH_YEAR,
    'Jupiter': 11.862615 * SECONDS_IN_EARTH_YEAR,
    'Saturn': 29.447498 * SECONDS_IN_EARTH_YEAR,
    'Uranus': 84.016846 * SECONDS_IN_EARTH_YEAR,
    'Neptune': 164.79132 * SECONDS_IN_EARTH_YEAR,
  };

  double _roundDouble(double value, int places) {
    var mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  double age({required String planet, required int seconds}) {
    final multiplier = planetsMap[planet];
    return _roundDouble(seconds / multiplier!, 2);
  }
}

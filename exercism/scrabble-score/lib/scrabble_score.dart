const POINTS = <int, List<String>>{
  1: ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
  2: ['D', 'G'],
  3: ['B', 'C', 'M', 'P'],
  4: ['F', 'H', 'V', 'W', 'Y'],
  5: ['K'],
  8: ['J', 'X'],
  10: ['Q', 'Z'],
};
int score(String word) {
  var result = 0;
  for (var letter in word.toUpperCase().split('')) {
    for (int points in POINTS.keys) {
      bool? hasLetter = POINTS[points]?.contains(letter);
      if (hasLetter != null && hasLetter) {
        result += points;
      }
    }
  }

  return result;
}

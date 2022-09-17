class Anagram {
  Map<String, int> _letterCount(String word) {
    var count = Map<String, int>();
    for (var letter in word.split('')) {
      count.update(letter, (value) => value + 1, ifAbsent: () => 1);
    }
    return count;
  }

  List<String> findAnagrams(String word, List<String> matches) {
    var result = <String>[];
    final wordLC = word.toLowerCase();
    final wordCount = _letterCount(wordLC);
    for (var match in matches) {
      final matchLC = match.toLowerCase();
      if (word.length != match.length) continue;
      if (wordLC == matchLC) continue;

      final matchCount = _letterCount(matchLC);
      bool isAnagram = true;
      for (var wc in wordCount.entries) {
        if (!matchCount.containsKey(wc.key) ||
            (matchCount[wc.key]! != wc.value)) {
          isAnagram = false;
          break;
        }
      }

      if (isAnagram) result.add(match);
    }

    return result;
  }
}

class WordCount {
  Map<String, int> countWords(String sentence) {
    Map<String, int> count = {};
    for (var match in RegExp(r"\w+('\w+)?").allMatches(sentence)) {
      var letter = match.group(0)?.toLowerCase();
      if (letter != null)
        count.update(letter, (value) => value + 1, ifAbsent: () => 1);
    }
    return count;
  }
}

class Bob {
  String response(String sentence) {
    sentence = sentence.trim();
    if (sentence.isEmpty) {
      return 'Fine. Be that way!';
    }
    bool isYelling = sentence.toUpperCase() == sentence &&
        sentence.toLowerCase() != sentence;

    bool isAQuestion = sentence.endsWith('?');
    if (isYelling && isAQuestion) {
      return "Calm down, I know what I'm doing!";
    }

    if (isYelling) {
      return 'Whoa, chill out!';
    }

    if (isAQuestion) {
      return 'Sure.';
    }

    return 'Whatever.';
  }
}

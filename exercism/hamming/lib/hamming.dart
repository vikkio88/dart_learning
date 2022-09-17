class Hamming {
  int distance(String sequence, String other) {
    if (sequence.isEmpty ^ other.isEmpty) { // friggin love a XOR <3
      throw ArgumentError('no strand must be empty');
    }

    if (sequence.length != other.length) {
      throw ArgumentError('left and right strands must be of equal length');
    }
    int distance = 0;
    for (var i = 0; i < sequence.length; i++) {
      if (sequence[i] != other[i]) distance += 1;
    }

    return distance;
  }
}

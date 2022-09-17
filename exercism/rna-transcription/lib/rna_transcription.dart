class RnaTranscription {
  static const map = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U',
  };
  String toRna(String dna) {
    if (dna.isEmpty) return '';

    String rna = '';
    for (var nucleotide in dna.split('')) {
      if (map.containsKey(nucleotide)) {
        rna += map[nucleotide]!;
      }
    }

    return rna;
  }
}

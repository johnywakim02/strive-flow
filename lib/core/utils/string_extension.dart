extension StringExtension on String {
  String takeWords(int count) {
    // this extensions allows to select a number of words from a sentence
    final words = trim().split(RegExp(r'\s+')); // trim spaces on both sides and split words from string at any amount of whitespace
    final subsentence = words.take(count).join(' '); // tale the first 'count' words and join them into a subsentence
    return words.length > count ? '$subsentence...' : subsentence; // if the subsentence = sentence, return it without ellipsis (...)
  }
}
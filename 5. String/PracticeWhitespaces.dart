void main() {
  String str = " This  a sentence  with many whitespaces  .  ";
  
  str = str.trim();

  // Split the sentence into words using one or more whitespaces as the delimiter
  List<String> words = str.split(RegExp(r'\s+'));

  for (String word in words) {
    print(word);
  }
}
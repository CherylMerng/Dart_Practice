// Write a dart program to check whether a character is vowel or consonant.

void main() {
  String character = "O";
  checkVowelConsonant(character);
}

void checkVowelConsonant(String char) {
  if ("aeiouAEIOU".contains(char)) {
    print("$char is a vowel.");
  }
  else {
    print("$char is a consonant.");
  }
}
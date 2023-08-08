// Write a dart program to check whether a character is vowel or consonant.

import 'dart:io';

void main() {
  
  print("Enter an alphabet only");
  String? char = stdin.readLineSync()!;
  
  bool checkAlphabet = char.length == 1 && (char.toLowerCase().contains(RegExp(r'[a-z]')));
  
  if (!checkAlphabet) {
    print("$char is not a single alphabet character. Try again!");  
  } 
  else {
    // String result = (char.toLowerCase()=="a"||char.toLowerCase()=="e"||char.toLowerCase()=="i"||
    // char.toLowerCase()=="o"||char.toLowerCase()=="u") ? "vowel" : "consonant";

    List<String> vowels = ["a", "e", "i","o", "u"];
    String result = vowels.contains(char.toLowerCase()) ? "vowel" : "consonant";

    print("$char is a $result.");
  }
  
}
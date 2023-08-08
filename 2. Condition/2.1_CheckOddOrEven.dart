// Write a dart program to check if the number is odd or even.

import 'dart:io';

void main() {
  print("Enter a number");
  num? number = num.parse(stdin.readLineSync()!);
  
  String check = (number %2 != 0) ? "odd" : "even";
  print("$number is an $check number.");
}
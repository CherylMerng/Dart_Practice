// Write a program in Dart to calculate power of a certain number. For e.g 5^3=125

import 'dart:io';
import 'dart:math';

void main() {
  print("Enter a number:");
  num number = num.parse(stdin.readLineSync()!);
  print("Enter a power:");
  num power = num.parse(stdin.readLineSync()!);

  num result = calculatePower(number, power);
  print("\n$number ^ $power = $result");
}

num calculatePower(num base, num exponent) {
  return pow(base, exponent);
}
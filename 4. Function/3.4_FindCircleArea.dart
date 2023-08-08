// Write a program in Dart that find the area of a circle using function.

import 'dart:math';

void main() {
  double radius = 5;
  print(calculateArea(radius).toStringAsFixed(2));
}

double calculateArea(r) {
  return pi * pow(r,2);
}
// Write a program in a dart that implements the Pythagorean theorem using function.
  // c^2 = a^2 + b^2
  // c= sqrt(a2+b2)

import 'dart:math';

  void main(){
    double sideA = 3.0;
    double sideB = 4.0;

    print(calculateHypotenuse(sideA, sideB));
  }

  double calculateHypotenuse(double a, double b) {
    return sqrt(pow(a,2) + pow(b,2));
  }
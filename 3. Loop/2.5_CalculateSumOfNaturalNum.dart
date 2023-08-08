// Write a dart program to calculate the sum of natural numbers.

import 'dart:io';

void main() {
  print("Enter a natural number.");
  int n = int.parse(stdin.readLineSync()!);
  int sum = calculateSum(n);
  print("Sum of first $n natural numbers is $sum.");
}

int calculateSum(int n) {
  return (n * (n + 1)) ~/ 2;
}

// int calculateSum(int n) {
//   int sum = 0;
//   for (int i=1; i<=n; i++) {
//     sum += i;
//   }
//   return sum;
// }
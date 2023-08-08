///Write a program to calculate the electricity bill (accept number of unit from user) according to the following criteria :

import 'dart:io';

main() {
  print("Enter number of units");
  double? unit = double.parse(stdin.readLineSync()!);
  double bill;

  if (unit <= 100) {
    bill = 0;
  }
  else if (unit <= 200) {
    bill = 5 * (unit - 100);
  }
  else {
    bill = (5 * 100) + (10 * (unit - 200));
  }

  print("The electricity bill is $bill");
}

//        Unit                                                     Price  
// First 100 units                                               no charge
// Next 100 units                                              ks 5 per unit
// After 200 units                                             ks 10 per unit
// (For example if input unit is 350 than total bill amount is Ks 2000)
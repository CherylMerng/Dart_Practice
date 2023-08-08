// Suppose, you often go to restaurant with friends and you have to split amount of bill. 
// Write a program to calculate split amount of bill. 
// Formula = (total bill amount) / number of people

import 'dart:io';

void main(){

  print("Welcome To The Bill Split Calculator");
  
  print("Enter total bill");  //219.47
  num bill = num.parse(stdin.readLineSync()!);
  print("Enter % of tip");
  num ? tipPercent = num.parse(stdin.readLineSync()!); //20
  print("Enter number of people splitting the bill");
  num people = num.parse(stdin.readLineSync()!); //5

  num tip = bill * (tipPercent/100);
  print("\nTip amount: ${tip.toStringAsFixed(2)}"); //43.89
  num totalBill = bill + tip;
  print("Total bill plus tip: ${totalBill.toStringAsFixed(2)}"); //263.36
  num paymentPerPerson = totalBill / people; 
  print("Each person owes: ${paymentPerPerson.toStringAsFixed(2)}"); //52.67

}

// Welcome To The Bill Split Calculator
// What is the total bill?: 219.47
// What % tip would you like to give?: 20
// How many people are splitting the bill?: 5
// Tip amount: $43.89
// Total bill including tip: $263.36
// Each person owes: $52.67
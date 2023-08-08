// Write a program to print full name of a from first name and last name using user input.

import 'dart:io';

void main(){

  print("Enter first name");
  String? fn = stdin.readLineSync()!;
  print("Enter last name");
  String? ln = stdin.readLineSync()!;

  print("Full name: $fn $ln");
  //print(fn + " " + ln);
  
}
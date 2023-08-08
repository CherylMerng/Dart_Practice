// interest program 
  // user input: price

import 'dart:io';

void main(){

  print("Enter principal amount");
  num p = num.parse(stdin.readLineSync()!);
  print("Enter rate");
  num? r = num.parse(stdin.readLineSync()!);
  print("Enter time");
  num t = num.parse(stdin.readLineSync()!);

  num i = (p * t * r) / 100;
  print("Interest is ${i}");

}

//principal amount  - 10000 | 3000
//rate  - 5 | 7
//time  - 5 | 1
  
// I = （P*T*R）/100
//interest  - 2500 | 210
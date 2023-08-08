// Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.

import 'dart:io';

void main() {

  print("Welcome to Calculator Program");
  print("-----------------------------");

  print("Enter an operator");
  var operator = stdin.readLineSync()!;

  print("Enter num1");
  num num1 = num.parse(stdin.readLineSync()!);

  print("Enter num2");
  num num2 = num.parse(stdin.readLineSync()!);

  num result = calculator(num1, num2, operator);
  print("Result: $result");

}

num calculator(num num1, num num2, String operator) {
  
  num result;

  switch (operator) {
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      break;
    case "*":
      result = num1 * num2;
      break;
    case "/":
      result = num1 / num2;
      break;
    default:
      print("Invalid operator");
      return 0;
  }

  return result;

}
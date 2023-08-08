// operator + - * /
  // (-) => big - small
  // loop => input big/ small
  // ans => no minus


import 'dart:io';

main() {
  print("Welcome to Calculator Program");
  print("-----------------------------");
  num result = 0;

  print("Enter an operator");
  var operator = stdin.readLineSync()!;

  print("Enter num1");
  num num1 = num.parse(stdin.readLineSync()!);

  print("Enter num2");
  num num2 = num.parse(stdin.readLineSync()!);

  if (operator == "+" || operator == "-" || operator == "*" || operator == "/") {
    if (operator == "+") {
      result = num1 + num2;
      print("Result: $result");
    }
    else if (operator == "-") {
      if (num1 > num2) {
        result = num1 - num2;
        print("Result: $result");
      }
      else {
        print("\nNum1 must be greater than num2!\n");
      }
    }
    else if (operator == "*") {
      result = num1 * num2;
      print("Result: $result");
    }
    else if (operator == "/") {
      result = num1 / num2;
      print("Result: $result");
    }
    
  }
  else {
    print("\nCannot do calculations!\nPlease only type the operators (+ - * /)\n");
  }

}
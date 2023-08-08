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

  switch (operator) {

    case "+":
      result = num1 + num2;
      print("\nResult: $result\n");
      break;

    case "-":
      if (num1 > num2) {
        result = num1 - num2;
        print("\nResult: $result\n");
      }
      else {
        print("\nNum1 must be greater than num2. Try again!\n");
      }
      break;

    case "*":
      result = num1 * num2; 
      print("\nResult: $result\n");
      break;

    case "/":
      result = num1 / num2;
      print("\nResult: $result\n");
      break;

    default:
      print("\nCannot do calculations!\nPlease only type the operators (+ - * /)\n");

  }  

}
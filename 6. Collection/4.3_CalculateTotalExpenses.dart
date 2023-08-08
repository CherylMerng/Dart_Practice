// Create a program thats reads list of expenses amount using user input and print total.

import 'dart:io';

void main() {
  
  List<num> expenses = [];
  num totalExpenses = 0;

  print("Enter the number of expenses.");
  int expenseList = int.parse(stdin.readLineSync()!);

  for (int i=0; i<expenseList; i++) {
    
    print("\nEnter list ${i+1} in Expenses List.");
    num? expense = num.parse(stdin.readLineSync()!);

    expenses.add(expense);
    totalExpenses += expense;

  }
  
  print("\nExpenses List: $expenses");
  print("Total Expenses : $totalExpenses\n");

}
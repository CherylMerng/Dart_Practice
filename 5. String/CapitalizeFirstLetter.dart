// ask user input => name 
// change first letter into uppercase

import 'dart:io';

void main() {
  print("Enter your name:");
  String name = stdin.readLineSync()!;
  print("${name[0].toUpperCase()}${name.substring(1)}");
}
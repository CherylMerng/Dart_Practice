// Write a dart program to create a class Animal with properties [id, name, color]. 
// Create another class called Cat and extends it from Animal. 
// Add new properties sound in String. 
// Create an object of a Cat and print all details.

import 'Cat.dart';

void main() {
  Cat cat = Cat(1, "Whiskers", "Grazy", "Meow");

  print("ID: ${cat.id}, Name: ${cat.name}, Color: ${cat.color}, Sound: ${cat.sound}");
}
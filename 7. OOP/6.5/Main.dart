// Write a dart program to create a class Camera with private properties [id, brand, color, price].
// Create a getter and setter to get and set values. 
// Also, create 3 objects of it and print all details.

import 'Camera.dart';

void main() {
  Camera c1 = Camera(1, "Canon", "Black", 800);
  Camera c2 = Camera(2, "Sony", "Silver", 1000);
  Camera c3 = Camera(3, "Nikon", "Red", 700);

  List<Camera> cameraList = [c1, c2, c3];

  for (var c in cameraList) {
    print("ID: ${c.id}, Brand: ${c.brand}, Color: ${c.color}, Prize: \$${c.price}");
  }
}
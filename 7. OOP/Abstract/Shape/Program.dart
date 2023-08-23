import 'dart:math';

import 'Shape.dart';

void main() {
  Random r = new Random();

  List<String> colors = ["red", "green", "blue"];

  int radius = 2 + r.nextInt(5+1-2); // 2 + Random().nextInt(5+1-2);  // 2~5
  int width = 5 + r.nextInt(11+1-5);
  int height = 8 + r.nextInt(11+1-8);

  //Constructor with positional parameter
  Shape circle = new Circle(colors[r.nextInt(3)], radius);
  print("Radius - ${radius}");
  print("Color - ${circle.getColor()}");
  print("Area - ${circle.getArea()}\n");

  //Constructor with named parameter
  Shape rectangle = new Rectangle(color: colors[r.nextInt(3)], width: width, height: height);
  print("Width - ${width}, Height - ${height}");
  print("Color - ${rectangle.getColor()}");
  print("Area - ${rectangle.getArea()}\n");

  //Constructor with optional parameter
  Shape triangle1 = new Triangle(colors[r.nextInt(3)], width);
  print("Side - ${width}");
  print("Color - ${triangle1.getColor()}");
  print("Area - ${triangle1.getArea()}\n");

  Shape triangle2 = new Triangle(colors[r.nextInt(3)], width, height);
  print("Base - ${width}, Height - ${height}");
  print("Color - ${triangle2.getColor()}");
  print("Area - ${triangle2.getArea()}\n");
}
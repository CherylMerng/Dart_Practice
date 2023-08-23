// mainly practiced 3 types of constructor together abstract
// getColor() - is used like a propoerty

import 'dart:math';

abstract class Shape {

  String color;
  
  Shape(this.color);

  String getColor() {   //Non-Abstract method
    return color;
  }

  double ? getArea() {} //Abstract method

}

class Circle extends Shape {

  int radius;

  //Constructor with positional parameter
  Circle (String color, this.radius) : super(color);
  
  @override
  double getArea() {
    return double.parse((pi * radius * radius).toStringAsFixed(2));
  }
  
}

class Rectangle extends Shape {


  int width, height;

  //Constructor with named parameter
  Rectangle ({required String color, required this.width, required this.height}): super(color);

  @override
  double getArea() {
    return (width * height).toDouble();
  }
}

class Triangle extends Shape {

  int? width, height;

  //Constructor with optional parameter
  Triangle (String color, this.width, [int? height]) : super(color){
    this.height = height ?? width;  // Set height to width if it's null
  }  

  @override
  double? getArea() {
    return 0.5 * width! * height!;
  }
}
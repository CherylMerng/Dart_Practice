// Write a dart program to create a class Camera with private properties [id, brand, color, price].
// Create a getter and setter to get and set values. 
// Also, create 3 objects of it and print all details.

void main() {
  Camera c1 = Camera(1, "Canon", "Black", 800);
  Camera c2 = Camera(2, "Sony", "Silver", 1000);
  Camera c3 = Camera(3, "Nikon", "Red", 700);

  List<Camera> cameraList = [c1, c2, c3];

  for (var c in cameraList) {
    print("ID: ${c.id}, Brand: ${c.brand}, Color: ${c.color}, Prize: \$${c.price}");
  }
}

class Camera {
  int id;
  String brand;
  String color;
  double price;

  Camera(this.id, this.brand, this.color, this.price);

  int get getId => this.id;
  set setId(int id) => this.id = id;

  String get getBrand => this.brand;
  set setBrand(String brand) => this.brand = brand;

  String get getColor => this.color;
  set setColor(String color) => this.color = color;

  double get getPrice => this.price;
  set setPrice(double price) => this.price = price;

}
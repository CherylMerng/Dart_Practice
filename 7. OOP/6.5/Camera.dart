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
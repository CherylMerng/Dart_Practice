// Write a dart program to create a class Laptop with properties [id, name, ram] 
// and create 3 objects of it and print all details.

void main() {
  Laptop l1 = Laptop(1, "Dell", 8);
  Laptop l2 = Laptop(2, "HP", 16);
  Laptop l3 = Laptop(3, "Lenovo", 12);

  l1.display();
  l2.display();
  l3.display();
}

class Laptop{
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  display() {
    print("ID: $id, Name: $name, RAM: $ram");
  }
}
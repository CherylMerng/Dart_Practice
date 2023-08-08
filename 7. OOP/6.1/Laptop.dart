// Write a dart program to create a class Laptop with properties [id, name, ram] 
// and create 3 objects of it and print all details.

class Laptop{
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  display() {
    print("ID: $id, Name: $name, RAM: $ram");
  }
}
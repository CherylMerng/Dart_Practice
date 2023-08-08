// Write a dart program to create a class House with properties [id, name, prize]. 
// Create a constructor of it and create 3 objects of it. 
// Add them to the list and print all details.

import 'House.dart';

void main() {
  House h1 = House(1, "Modern Villa", 500000);
  House h2 = House(2, "Cozy Cottage", 200000);
  House h3 = House(3, "Urban Apartment", 1500000);

  List<House> houses = [h1, h2, h3];

  for (var h in houses) {
    print("ID: ${h.id}, Name: ${h.name}, Prize: \$${h.prize}");
  }
}
// Add a factory constructor to Bottle and return the object of CokeBottle. 
// Instantiate CokeBottle using the factory constructor 
// and call the open() on the object.

void main() {
  // Add a factory constructor to Bottle and return the object of CokeBottle.
  // Instantiate CokeBottle using the factory constructor. 
  Bottle b = CokeBottle();

  b.open();
}

// Create an interface called Bottle and add a method to it called open(). 

abstract class Bottle {
  void open();
}

// Create a class called CokeBottle and implement the Bottle 
// and print the message “Coke bottle is opened”. 

class CokeBottle implements Bottle {
  @override
  void open() {
    print("Coke bottle is opened.");
  }
}
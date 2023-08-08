// Create a class called CokeBottle and implement the Bottle 
// and print the message “Coke bottle is opened”. 

import 'Bottle.dart';

class CokeBottle implements Bottle {

  @override
  void open() {
    print("Coke bottle is opened.");
  }
}
void main() {
  Customer c1 = new Customer("Tan Lian Hwee", "Clementi Road", "C10010"); 
  Customer c2 = new Customer("Lim Teck Gee", "Kent Ridge Road", "C10020"); 
  
  TourGuide tg1 = new TourGuide("Koh Ghim Moh", "Dover Road", 3400); 
  TourGuide tg2 = new TourGuide("Liat Kim Ho", "West Coast Road", 2700); 

  Tour t1 = new Tour("Paris", 3400, 3); 
  Tour t2 = new Tour("London", 3200, 3); 
  Tour t3 = new Tour("Munich", 3100, 2); 
  Tour t4 = new Tour("Milan", 3500, 3); 

  Tour t = Tour("Bagan", 7, 700, ["Temples", "Hot air ballon"]);
  t.add("Tower");
  print(t.toString());
}

class Person {
  String ? name;
  String ? address;

  Person(this.name, [this.address]);

  @override
  String toString() {
    return "Name: $name, Address: $address";
  }
}

class Customer extends Person {
  String ? id;

  Customer(String name, String address, String id) : super(name, address);

  @override
  String toString() {
    return super.toString() + ", ID: $id";
  }
}

class TourGuide extends Person {
  int ? salary;

  TourGuide(String name, String address, int salary) : super(name, address);

  @override
  String toString() {
    return super.toString() + ", Salary: $salary";
  }
}

class Tour {
  String ? name;      // tour name
  int ? duration;     // in days
  int ? cost;         // in us dollar
  List<String> ? poi; // places of interest to be visited list

  Tour(this.name, this.duration, this.cost, [List<String> ? customPOI]) {
    poi = customPOI ?? [];  // If customPOI is null, create an empty list
  }

  void add(String location) {
    poi!.add(location);
  }

  @override
  String toString() {
    return "Tour: $name, $duration days, \$$cost\nPlaces of Interest: $poi";
  }
}

// Remaining Classes
// Tour 
    // attributes - name(string), cost(int), duration(int) and places of interest to be visited(list)
      // via Cost and Duration virtual properties
// TourPackage : Tour 
    // overriding Cost and Duration properties, an additional list of tours attribute
    // like to offer tour packages involving a set nearby of city tours
      // ConsistOf() method so that a tour becomes part of a tour package
      // Customers would be attracted by a 10% discount off the sum of individual tour prices. 
        // The tour duration will be the sum of individual tour duration.
// Trip
    // Tour could be offered at various dates, for example, the Paris tour could be offered in May 2023 as well as September 2023. 
    // class for instantiating a Trip object which consist of a tour(Tour), 
      // when(DateTime) the tour commences, maximum(int) size of travellers, and current bookings(List)
    // Book() method which reserves N seats for a Customer,
      // fails (with an ApplicationException subclass thrown) if the addition of N seats exceeds the maximum size of travellers
      // more easily implemented via an additional Booking object
// Booking
    // each booking maybe represented as a customer(Customer) 
      // who made the booking of a trip(Trip) for a number(int) of travellers
    // a total Cost property for the Booking instance with a 5% discount if number for the booking is more than 5
    // GetRevenue() method for the Trip class which calculates the revenue to be collected from all bookings
// Travel Agency
    // attributes - name(string), customers(List), tours(List), trips(List)
    // 3 Add() methods (overloaded) for adding Customers, Tours, Trips respectively
    // FindTour(), FindTrip() and FindCustomer() methods to find a suitable instance in the corresponding list attributes
    // ListTours() and ListTrips()methods list the status of tours and trips in the agency
// Create a map with name, address, age, country keys and store values to it. 
// Update country name to other country and print all keys and values.

void main() {
  Map<String, dynamic> personInfo = {
    "Name" : "Cheryl",
    "Address" : "Singapore",
    "Age" : 23,
    "Country" : "Singapore"
  };

  personInfo["Country"] = "Myanmar";

  print("Print as a map\n--------------");
  print(personInfo);
  
  print("\n\nPrint each item\n---------------");
  personInfo.forEach((key, value) {
    print("$key: $value");
  });

}
// Create a map with name, phone keys and store some values to it. 
// Use where to find all keys that have/ more than length 4.

void main() {
  Map<String,String> map = {
    "Amy": "12345678",
    "Bryan": "87654321",
    "Cheryl": "83458649",
    "Dianna": "98765432",
    "Emme" : "23456789"
  };

  List<String> keysWithLength4 = map.keys.where((key) => key.length == 4).toList();
  print("Keys with length 4: $keysWithLength4");
}
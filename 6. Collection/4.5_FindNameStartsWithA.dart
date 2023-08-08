// Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.

void main() {

  List<String> names = ["Amy", "Bob", "Celia", "Deanne", "Elena", "Finn", "Gabriel", "Ally"];

  List<String> filteredNames = names.where((name) => name.startsWith("A")).toList();

  // Print as a list
  print("Names starting with 'A': $filteredNames");

  // Print as one element
  for (String name in filteredNames) {
    print(name);

  }
}
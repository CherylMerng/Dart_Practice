// Create a list of names and print all names using list.

void main() {
  List<String> names = ["Amy", "Bob", "Celia", "Deanne", "Elena", "Finn", "Gabriel"];

  print("\nPrint as a list\n---------------");           
  printList(names);  

  print("\nPrint using loop\n----------------");           
  printListUsingLoop(names);
}

printList(List items) {
  print(items);
}

printListUsingLoop(List items) {
  for (var item in items) {
    print(item);
  }
}
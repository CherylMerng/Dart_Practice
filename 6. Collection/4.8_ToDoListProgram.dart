// Create a simple to-do application that allows user to add, remove, and view their task.
  // to do list - add, remove, show all
  
import 'dart:io';

List<String> todoList = [];

void main() {
  showMenu();  
} 

String getUserInputForItem(String action) {
  print("\nEnter the item to $action.");
  String value = stdin.readLineSync()!;
  return value;
}

int getUserInputForIndex(String action, int listLength) {
  print("\nEnter the index where you want to $action (0 ~ $listLength)."); // behind last index
  int index = int.parse(stdin.readLineSync()!);
  return index;
}

void addItem() {
  String value = getUserInputForItem("add");
  todoList.add(value);  
  print("Item added.");
}

void addItemByIndex() {
  int index = getUserInputForIndex("add", todoList.length); // behind last index

  if (index >= 0 && index <= todoList.length) { // && last index+1
    String value = getUserInputForItem("add");
    todoList.insert(index, value);
    print("Item added at index $index.");
  }
  else {
    print("Invalid index! Item not added!");
  }
}

void removeItem() {
  String value = getUserInputForItem("remove");

  if (todoList.contains(value)) {
    todoList.remove(value);
    print("Item removed.");
  }
  else {
    print("Item not found in the list! Item not removed!");
  }  
}

void removeItemByIndex() {
  int index = getUserInputForIndex("remove", todoList.length-1);  // last index

  if (index >= 0 && index < todoList.length) {
    todoList.removeAt(index);
    print("Item removed at index $index.");
  }
  else {
    print("Invalid index! Item not removed!");
  }
}

void showList() {
  print("\nTo Do List\n"
  "~~~~~~~~~~~~~~\n");
  if (todoList.isEmpty) {
    print("To Do List is empty.");
  }
  else {
    for (int i = 0; i < todoList.length; i++) {
      print("${i+1}. ${todoList[i]}");
    }
  }
}

void functionMenu(int menu) {

  switch(menu) {
    case 0:
      print("Exiting the program.\n");
      return;
    case 1:
      addItem();
      break;
    case 2:
      addItemByIndex();
      break;
    case 3:
      removeItem();
      break;
    case 4:
      removeItemByIndex();
      break;
    case 5:
      showList();
    default:
      print("Invalid choice of menu!\n");
  }  
}

void showMenu() {

  int? menu; 

  while(menu != 0) {
    print ("_________________________________________\n\n"
    "What would you like to do to the To Do List? Please choose a menu [0~5].\n\n"
    "[0] Exit the program.\n"
    "[1] Add an item.\n"
    "[2] Add an item at position.\n"
    "[3] Remove an item.\n"
    "[4] Remove an item at position.\n"
    "[5] Show the list.\n"
    "_________________________________________\n"
    );

    menu = int.parse(stdin.readLineSync()!);
    functionMenu(menu);

    // if (menu >= 0 && menu <= 5) {
    //   functionMenu(menu);
    // }
    // else {
    //   print("Invalid choice of menu!\n");
    // }
  }   
}
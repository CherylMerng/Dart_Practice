import 'dart:io';

void main() {
  List<String> todoList = [];

  void addTask(String task) {
    todoList.add(task);
    print("Task added successfully!");
  }

  void removeTask(String task) {
    if (todoList.contains(task)) {
      todoList.remove(task);
      print("Task removed successfully!");
    } else {
      print("Task not found in the to-do list.");
    }
  }

  void viewTasks() {
    print("To-Do List:");
    for (int i = 0; i < todoList.length; i++) {
      print("${i + 1}. ${todoList[i]}");
    }
  }

  while (true) {
    print("\nOptions:");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        print("Enter the task to add: ");
        String? taskToAdd = stdin.readLineSync();
        if (taskToAdd != null) {
          addTask(taskToAdd);
        }
        break;
      case "2":
        print("Enter the task to remove: ");
        String? taskToRemove = stdin.readLineSync();
        if (taskToRemove != null) {
          removeTask(taskToRemove);
        }
        break;
      case "3":
        viewTasks();
        break;
      case "4":
        print("Exiting the application.");
        return;
      default:
        print("Invalid choice. Please choose a valid option.");
        break;
    }
  }
}
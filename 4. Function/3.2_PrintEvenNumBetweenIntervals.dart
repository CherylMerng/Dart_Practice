// Write a program in Dart to print even numbers between intervals using function

void main() {
  int start = 1;
  int end = 20;

  List<int> list = printEvenNumbers(start, end);
  // print(list);

  for (int i in list) {
    print(i);
  }
}

List<int> printEvenNumbers(int start, int end) {
  
  List<int> evenList = [];

  for (int i = start; i <= end; i++) {
    if (i %2 == 0) {
      evenList.add(i);
    }
  }

  return evenList;
}
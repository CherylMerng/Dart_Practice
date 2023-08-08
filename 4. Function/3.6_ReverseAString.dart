// Write a program in Dart to reverse a String using function.

void main() {
  String str = "Hello, please smile!";
  print(reverseString(str));
}

String reverseString(String str) {
  return str.split('').reversed.join();
}
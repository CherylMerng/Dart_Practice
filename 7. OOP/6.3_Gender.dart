// Write a dart program to create an enum class for gender [male, female, others] 
// and print all values.

void main() {
  print(Gender.values);
}

enum Gender {
  male,
  female, 
  others
}
// Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100

void main() {
  double p = 1000;  // principal amount
  double t = 2; // time in years
  double r = 5; // rate of interest

  double simpleInterest = (p * t * r) / 100;
  print("Simple Interest: $simpleInterest");
}
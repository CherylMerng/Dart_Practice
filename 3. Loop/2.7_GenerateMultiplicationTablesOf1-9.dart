// Write a dart program to generate multiplication tables of 1-9.
  // no need input

void main() {
    
  for (int i=1; i<=9; i++) { // multiplier
    print("\nMultiplication Table of $i");
    for (int j=1; j<=12; j++) {   // multiplicants
      print("$i x $j = ${i*j}");  
    }
  }
  
}


// using function

// void main() {
//   for (int i=1; i<=9; i++) {
//     printMultiplicationTable(i);
//   }
// }

// void printMultiplicationTable(int multiplier) {
//   print("\nMultiplication Table of $multiplier");
//   for (int j=1; j<=12; j++) {
//     print("$multiplier x $j = ${multiplier*j}");
//   }
// }
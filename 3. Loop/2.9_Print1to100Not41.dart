// Write a dart program to print 1 to 100 but not 41.

void main() {

  // While Loop
  // int num = 1;
  // while (num <= 100) {

  //   if (num != 41) {
  //     print(num);
  //   }      
  //   num++;
    
  // }

  // Do While Loop
  // int num = 1;
  // do {
  //   if (num != 41) {
  //     print(num);
  //   }
  //   num++;    
  // }
  // while (num <= 100);

  // For Loop
  for (int num = 1; num <=100; num++) {
    if (num == 41) {
      continue;
    }
    print(num);
  }

}
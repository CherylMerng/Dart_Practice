import 'dart:math';
import 'dart:io';

void main(){
  playNumberGuessingGame();
}

void playNumberGuessingGame() {
  Random r = new Random();
  int random = 1 + r.nextInt(100);  // (100+1)-1

  int? guess;
  int counter = 0;

  do {
    print("\nGuess a number between 1 and 100 :");
    guess = int.parse(stdin.readLineSync()!);

    if (guess < 1 || guess > 100) {
      print("Please enter a number between 1 and 100.");
      continue; // not count this
    }
     
    counter++;

    if (random > guess) {
      print("The correct number is greater than your guess ($guess)");
    } 
    else if (random < guess) {
      print("The correct number is smaller than your guess ($guess)");
    } 
    else {
      print("You have tried $counter times!");

      if (counter == 1) {
        print("Congratulations! You are a wizard!");
      } else if (counter <= 3) {
        print("Good job! You found the answer within three tries!");
      } else if (counter <= 5) {
        print("Great effort! You guessed correctly within five attempts!");
      } else {
        print("Well done! It may have taken more tries, but you got there in the end!");
      }
      
    }

  } while (random != guess);
  
}

// random guess < int rNo = r.nextInt(100); > < 0 - 100 >
// ask userInput
// if userInput == random, correct
// scope
// 72 - random
// 50 - guess
// 50 < 100 greater than userInput
// 80 - guess
// 80 > smaller than userInput
// 70 90
// 70 80
// 72
// output => no of tries
// within 3rd tries => msg, 5th tries, 7th tries, more than 7th tries

// for loop
// if else
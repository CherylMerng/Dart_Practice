// Create a simple quiz application using oop 
// that allows users to play and view their score.

import 'Quiz.dart';

void main() {
  Quiz quiz = Quiz();
  
  quiz.addQuestion("What is the third planet from the Sun?", ["Venus", "Mars", "Jupiter", "Earth", "Uranus", "Mercury"], 3);
  quiz.addQuestion("What planet is closest in size to Earth?", ["Venus", "Mars", "Jupiter", "Earth", "Uranus", "Mercury"], 0);
  quiz.addQuestion("Which planet is known as the Red Planet?", ["Venus", "Mars", "Jupiter", "Earth", "Uranus", "Mercury"], 1);
  // quiz.addQuestion("What is the brightest planet in the night sky?", ["Venus", "Mars", "Jupiter", "Earth", "Uranus", "Mercury"], 0);
  // quiz.addQuestion("What is the second smallest planet in the solar system?", ["Venus", "Mars", "Jupiter", "Earth", "Uranus", "Mercury"], 1);  
  // quiz.addQuestion("What is the hottest planet in the Solar System?", ["Venus", "Mars", "Jupiter", "Earth", "Uranus", "Mercury"], 0);
  // quiz.addQuestion("What is the largest planet in the Solar System?", ["Venus", "Mars", "Jupiter", "Earth", "Uranus", "Mercury"], 2);
  // quiz.addQuestion("What is the seventh planet from the Sun?", ["Venus", "Mars", "Jupiter", "Earth", "Uranus", "Mercury"], 4);
  // quiz.addQuestion("The Galilean moons orbit what planet?", ["Venus", "Mars", "Jupiter", "Earth", "Uranus", "Mercury"], 2);
  // quiz.addQuestion("What planet is closest to the Sun?", ["Venus", "Mars", "Jupiter", "Earth", "Uranus", "Mercury"], 5);

  print("Welcome to the Quiz!\n");
  int userScore = quiz.startQuiz();
  print("\nQuiz completed. Your scored $userScore out of ${quiz.questions.length}.");


}
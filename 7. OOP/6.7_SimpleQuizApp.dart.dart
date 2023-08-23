// Create a simple quiz application using oop that allows users to play and view their score.

import 'dart:io';

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

class Quiz {
  List<Map<String, dynamic>> questions = [];

  void addQuestion(String question, List<String> options, int correctIndex) {
    questions.add({
      'question' : question,
      'options' : options,
      'correctIndex' : correctIndex,
    });
  }

  int startQuiz() {

    int score = 0;  // Initialize the score to 0
    
    for (var i = 0; i < questions.length; i++) {  // Loop through each question in the quiz
      print("Question ${i + 1}: ${questions[i]['question']}");  // Print the question

      for (var j = 0; j < questions[i]['options'].length; j++) { // Loop through each option for the question
        print("${j + 1}. ${questions[i]['options'][j]}"); // Print each option for the question
      }

      int userChoice = int.parse(stdin.readLineSync()!);  // Read the user's choice (answer)
      //int userChoice = int.parse(stdin.readLineSync() ?? '');

      // Check if the user's choice matches the correct answer index for this question
      if (userChoice == questions[i]['correctIndex']+1) {
        score++;  // Increment the score if the user's choice is correct
      }
    }

    return score; // Return the final score after all questions are answered
    
  }
}
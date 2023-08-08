import 'dart:io';

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
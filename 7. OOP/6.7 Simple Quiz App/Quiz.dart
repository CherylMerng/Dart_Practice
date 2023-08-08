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

    int score = 0;

    for (var i = 0; i < questions.length; i++) {
      print("Question ${i + 1}: ${questions[i]['question']}");

      for (var j = 0; j < questions[i]['options'].length; j++) {
        print("${j + 1}. ${questions[i]['options'][j]}");
      }

      int userChoice = int.parse(stdin.readLineSync()!);
      //int userChoice = int.parse(stdin.readLineSync() ?? '');
      if (userChoice == questions[i]['correctIndex']+1) {
        score++;
      }
    }

    return score;
    
  }
}
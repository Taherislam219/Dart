import 'dart:io';

class Question {
  String question;
  List<String> options;
  String answer;

  Question(this.question, this.options, this.answer);

  void display() {
    print("\n$question");
    for (var option in options) {
      print(option);
    }
  }

  bool checkAnswer(String userAnswer) {
    return userAnswer.trim().toLowerCase() == answer.trim().toLowerCase();
  }
}

class Quiz {
  List<Question> questions = [];
  int score = 0;

  void addQuestion(Question question) {
    questions.add(question);
  }

  void startQuiz() {
    print("====Welcome to the Quize===");

    for (var q in questions) {
      q.display();
      stdout.write("Enter your answer (A/B/C/D): ");
      String userAnswer = stdin.readLineSync() ?? "";

      if (q.checkAnswer(userAnswer)) {
        print("Correct!");
        score++;
      } else {
        print("Wrong! Correct answer: ${q.answer}");
      }
    }
    showScore();
  }

  void showScore() {
    print("\n===== Quiz Completed =====");
    print("Your Score: $score/${questions.length}");
  }
}

void main() {
  Quiz quiz = Quiz();

  quiz.addQuestion(
    Question("1. What is the capital of France?", [
      "A. Berlin",
      "B. Madrid",
      "C. Paris",
      "D. Rome",
    ], "C"),
  );

  quiz.addQuestion(
    Question("2. Which keyword is used to create a class in Dart?", [
      "A. function",
      "B. class",
      "C. object",
      "D. newclass",
    ], "B"),
  );

  quiz.addQuestion(
    Question("3. Flutter is developed by?", [
      "A. Apple",
      "B. Microsoft",
      "C. Google",
      "D. Amazon",
    ], "C"),
  );

  quiz.startQuiz();
}

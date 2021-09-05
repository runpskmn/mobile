import 'dart:io';
import "dart:math";

void main(){
  print("╔════════════════════════════════════════════");
  print("║               GUESS THE NUMBER             ");
  print("╟────────────────────────────────────────────");
  stdout.write("║ Enter max number you want to guess: ");
  int maxRandom = int.parse(stdin.readLineSync()!);
  print("╟────────────────────────────────────────────");
  var game = Game(maxRandom: maxRandom);

  var isCorrect = false;
  do {
    stdout.write("║ Guess the number between 1 and $maxRandom: ");
    String? input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == null)
      continue;

    Map resultMap = game.doGuess(guess);
    isCorrect = resultMap['isCorrect'];
    print("║ ➙ $guess : ${resultMap['text']}");
    print("╟────────────────────────────────────────────");
  }while(!isCorrect);

  print(game.getTotalGuesses());
  print("╟────────────────────────────────────────────");
  print("║                   THE END                  ");
  print("╚════════════════════════════════════════════");
}

class Game{
  late int answer;
  int count = 0;
  static const List feedbackList = [
    {
      'text': 'TOO HIGH! ▲',
      'isCorrect': false,
    },
    {
      'text': 'TOO LOW! ▼',
      'isCorrect': false,
    },
    {
      'text': 'CORRECT! ❤',
      'isCorrect': true,
    },
  ];

  Game({int maxRandom = 1000}){
    this.answer = Random().nextInt(maxRandom)+1;
  }

  Map doGuess(int num) {
    count++;
    if (num > this.answer) {
      return feedbackList[0];
    } else if (num < this.answer) {
      return feedbackList[1];
    } else {
      return feedbackList[2];
    }
  }

  String getTotalGuesses(){
    return "║ Total guesses: $count";
  }
}
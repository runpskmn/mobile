import 'dart:io';
import "dart:math";

void main(){
  const MAX_RANDOM = 100;
  Random rand = Random();
  int answer = rand.nextInt(MAX_RANDOM)+1;
  print("╔════════════════════════════════════════════");
  print("║               GUESS THE NUMBER             ");
  print("╟────────────────────────────────────────────");

  var guess;
  int count = 0;
  do {
    stdout.write("║ Guess the number between 1 and $MAX_RANDOM: ");
    String? input = stdin.readLineSync();
    guess = int.tryParse(input!);
    if(guess == null)
      continue;

    count++;
    if (answer == guess)
      print("║ ➙ $guess is CORRECT ❤, total guesses: $count");
    else if(answer > guess)
      print("║ ➙ $guess is TOO LOW! ▼");
    else
      print("║ ➙ $guess is TOO HIGH! ▲");
    print("╟────────────────────────────────────────────");
  }while(guess != answer);
  print("║                   THE END                  ");
  print("╚════════════════════════════════════════════");
}
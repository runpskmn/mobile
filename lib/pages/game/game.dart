import 'dart:math';

class Game{
  final int _answer;
  int _totalGuesses;
  List<int> _numberList = [];

  Game(): _answer = Random().nextInt(100), _totalGuesses =0 {
    print('Game constructor');
  }

  int get totalGuesses{
    return this._totalGuesses;
  }

  String get numberList{
    String str = "";
    for(int i=0;i<_numberList.length;++i){
      str += _numberList[i].toString();
      if(i+1 != _numberList.length)
        str += " -> ";
    }
    return str;
  }



  int doGuess(int num){
    _totalGuesses++;
    _numberList.add(num);

    if(num > _answer)
      return 1;
    else if(num < _answer)
      return -1;
    else
      return 0;
  }

}
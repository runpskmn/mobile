import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello/pages/game/game.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late Game _game;
  final _controller = TextEditingController();
  int? _guessNumber;
  String? _guessResult;
  bool _isLoading = false;
  bool _isCorrect = false;

  @override
  void initState() {
    super.initState();
    _game = Game();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GUESS THE NUMBER", style: GoogleFonts.kanit(color: Colors.white70),),
      ),
      body: Container(
        color: Colors.yellow.shade100,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildHeader(),
                (_isLoading) ?  _buidLoading() :_buildMainContent(),
                _buildInputNumber(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Image.asset(
          'assets/images/logo_number.png',
          width: 240.0, // 160 = 1 inch
        ),
        Text(
          'Guess The Number',
          style: GoogleFonts.kanit(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.orangeAccent),
        ),
      ],
    );
  }

  Widget _buildMainContent() {
    return (_guessNumber == null) ?
    Column(
       children: [
        Text("I'm thinking of a number between 1 and 100.",
          style: GoogleFonts.kanit(fontSize: 26, fontWeight: FontWeight.w300),
          textAlign: TextAlign.center
        ),
        Text("Can you guess it? 💗",
             style: GoogleFonts.kanit(fontSize: 26, fontWeight: FontWeight.w300),
             textAlign: TextAlign.center
         ),
      ],
    ) :
    Column(
      children: [
        Text(_guessNumber.toString(), style: GoogleFonts.kanit(fontSize: 120)),
        (_isCorrect) ?
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check, size: 40, color: Colors.green,),
                Text("$_guessResult", style: GoogleFonts.kanit(fontSize: 30)),
              ],
            ),
            OutlinedButton(
              onPressed: (){
                setState(() {
                  _isCorrect = false;
                  _guessNumber = null;
                  _game = Game();
                });
              },
              child: Text("NEW GAME", style: GoogleFonts.kanit(color: Colors.orangeAccent),),
            )
          ],
        ):
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.clear, size: 40, color: Colors.red,),
            Text("$_guessResult", style: GoogleFonts.kanit(fontSize: 30)),
          ],
        )
      ],
    );
  }

  Widget _buildInputNumber() {
    return _isCorrect ?
    Container(
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: TextField(
                enabled: false,
                controller: _controller,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: Colors.yellow,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  isDense: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Enter the number here',
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 16.0,
                  ),
                ),
              )
            ),
            TextButton(
              onPressed: null,
              child: Text('GUESS', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    ):
    Container(
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  cursorColor: Colors.yellow,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    isDense: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: 'Enter the number here',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 16.0,
                    ),
                  ),
                )
            ),
            TextButton(
              onPressed: () {
                _handleClickGuessButton();
              },
              child: Text('GUESS', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }

  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buidLoading(){
    return SpinKitRing(
      color: Colors.orangeAccent,
      size: 50.0,
    );
  }

  void _handleClickGuessButton(){
    if(_controller.text == ''){
      _showMaterialDialog("Error!", "Please enter the number.");
      return;
    }

    var num = int.tryParse(_controller.text);
    if(num == null)
      return;

    setState(() {
      _isLoading = true;
    });
    Future.delayed(const Duration(milliseconds: 500),(){
      _controller.clear();

      setState(() {
        _isLoading = false;
        _guessNumber = num;
        int result = _game.doGuess(num);
        if(result == 1)
          _guessResult = "TOO HIGH!";
        else if(result == -1)
          _guessResult = "TOO LOW!";
        else {
          _isCorrect = true;
          _guessResult = "CORRECT";
          int total = _game.totalGuesses;
          String numberList = _game.numberList;
          Future.delayed(const Duration(milliseconds: 500),(){
            _showMaterialDialog("GOOD JOB!", "The answer is $num.\nYou have made $total guesses.\n\n$numberList");
          });
        }
      });
    });


  }
}

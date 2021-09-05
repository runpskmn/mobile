import 'package:flutter/material.dart';

class CountGame extends StatefulWidget {
  const CountGame({Key? key}) : super(key: key);

  @override
  _CountGameState createState() => _CountGameState();
}

class _CountGameState extends State<CountGame> {
  bool isBlue = true;
  bool isRed = false;
  bool blueWin = true;
  int count = 0;

  Widget _buildIconStarBorder(){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(Icons.star_border_outlined, color: Colors.purple,),
    );
  }

  Widget _buildIconStar(){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(Icons.star, color: Colors.purple,),
    );
  }

  Widget _buildButtonRed1(){
    return isRed ? Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                count += 1;
                if(count >= 20){
                  isRed = false;
                  isBlue = false;
                }else{
                  isRed = !isRed;
                  isBlue = !isBlue;
                }
              });
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            child: Text(
              '1',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    )
        :
    Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            child: Text(
              '1',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    );
  }

  Widget _buildButtonRed2(){
    return isRed ? Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                count += 2;
                if(count >= 20){
                  isRed = false;
                  isBlue = false;
                }else{
                  isRed = !isRed;
                  isBlue = !isBlue;
                }
              });
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            child: Text(
              '2',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    )
        :
    Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            child: Text(
              '2',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    );
  }

  Widget _buildButtonRed3(){
    return isRed ? Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                count += 3;
                if(count >= 20){
                  isRed = false;
                  isBlue = false;
                }else{
                  isRed = !isRed;
                  isBlue = !isBlue;
                }
              });
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            child: Text(
              '3',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    )
        :
    Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            child: Text(
              '3',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    );
  }

  Widget _buildButtonBlue1(){
    return isBlue ? Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                count += 1;
                if(count >= 20){
                  isRed = false;
                  isBlue = false;
                  blueWin = false;
                }else{
                  isRed = !isRed;
                  isBlue = !isBlue;
                }
              });
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text(
              '1',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    )
        :
    Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text(
              '1',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    );
  }

  Widget _buildButtonBlue2(){
    return isBlue ? Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                count += 2;
                if(count >= 20){
                  isRed = false;
                  isBlue = false;
                  blueWin = false;
                }else{
                  isRed = !isRed;
                  isBlue = !isBlue;
                }
              });
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text(
              '2',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    )
        :
    Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text(
              '2',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    );
  }

  Widget _buildButtonBlue3(){
    return isBlue ? Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                count += 3;
                if(count >= 20){
                  isRed = false;
                  isBlue = false;
                  blueWin = false;
                }else{
                  isRed = !isRed;
                  isBlue = !isBlue;
                }
              });
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text(
              '3',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    )
        :
    Expanded(
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: Text(
              '3',
              style: TextStyle(fontSize: 40.0),
            ),
          )

      ),
    );
  }

  Widget _gamePage(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for(int i=0;i<count;++i)
              _buildIconStar(),
            for(int i=0;i<20-count;++i)
              _buildIconStarBorder()
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (isBlue ? Icon(Icons.keyboard_arrow_up, color: Color.fromRGBO(178, 178, 178, 0.5),size: 100):Icon(Icons.keyboard_arrow_up, color: Colors.black,size: 100)),
            Text(count.toString(), style: TextStyle(fontSize: 120),),
            (isBlue ? Icon(Icons.keyboard_arrow_down, color: Colors.black,size: 100):Icon(Icons.keyboard_arrow_down, color: Color.fromRGBO(178, 178, 178, 0.5),size: 100)),
          ],
        ),
        Container()
      ],
    );
  }

  Widget _endPage(){
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(blueWin ? "BLUE" : "RED", style: TextStyle(fontSize: 70, fontWeight:FontWeight.bold)),
        Text("win !", style: TextStyle(fontSize: 70, fontWeight:FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                isBlue = true;
                isRed = false;
                count = 0;
                blueWin = true;
              });
            },
            child: Text(
              'NEW GAME',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        )

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: const DecorationImage(
                image: const AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildButtonRed3(),
                  _buildButtonRed2(),
                  _buildButtonRed1(),
                ]
              ),
              (count < 20) ? _gamePage() : _endPage(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildButtonBlue3(),
                  _buildButtonBlue2(),
                  _buildButtonBlue1(),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}

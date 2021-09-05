import 'package:flutter/material.dart';
import 'dart:math';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GUESS THE NUMBER',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(179, 255, 102, 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: Icon(
                    Icons.person,
                    size: 80.0,
                    color: Colors.blue,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("พงศกร มีนุช", style: TextStyle(fontSize: 20.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          size: 20.0,
                          color: Colors.orangeAccent,
                        ),
                        Icon(
                          Icons.star,
                          size: 20.0,
                          color: Colors.orangeAccent,
                        ),
                        Icon(
                          Icons.star,
                          size: 20.0,
                          color: Colors.orangeAccent,
                        ),
                        Icon(
                          Icons.star,
                          size: 20.0,
                          color: Colors.orangeAccent,
                        ),
                        Icon(
                          Icons.star_border,
                          size: 20.0,
                          color: Colors.orangeAccent,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Text(
              '${randomNumber()}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 120, color: Colors.green),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'RANDOM',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  int randomNumber() {
    return (Random().nextInt(100));
  }
}

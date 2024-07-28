import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: BallSwap(),
        backgroundColor: Colors.blue,
      ),
    ),
  );
}

class BallSwap extends StatefulWidget {
  const BallSwap({super.key});

  @override
  State<BallSwap> createState() => _BallSwapState();
}

class _BallSwapState extends State<BallSwap> {
  int ballNumber = 1;
  void randNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          randNumber();
        },
        child: Image(
          image: AssetImage('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}

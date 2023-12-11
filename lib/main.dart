import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dice Roll'),
          backgroundColor: Colors.greenAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  void RollLeftDice() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
      print('Left dice has been rolled!');
    });
  }
  void rollRightDice() {
    setState(() {
      RightDiceNumber = Random().nextInt(6) + 1;
      print('Left dice has been rolled!');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    RollLeftDice();
                  },
                  child: Image.asset('images/dice$LeftDiceNumber.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    rollRightDice();
                  },
                  child: Image.asset('images/dice$RightDiceNumber.png')))
        ],
      ),
    );
  }
}

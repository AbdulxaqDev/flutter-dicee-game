import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text("Dicee App"),
          ),
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceLeftNum = 1;
  int diceRightNum = 1;
  void changeNum() => {
        setState(() => {
              diceLeftNum = Random().nextInt(6) + 1,
              diceRightNum = Random().nextInt(6) + 1,
            }),
      };
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () => {changeNum()},
              child: Image.asset(
                "images/dice$diceLeftNum.png",
                width: 170.0,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () => {changeNum()},
              child: Image.asset(
                "images/dice$diceRightNum.png",
                width: 170.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

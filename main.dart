import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludo Dice',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ludo Dice'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Dice(),
            ],
          ),
        ),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int _diceValue = 1;

  void _rollDice() {
    setState(() {
      _diceValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$_diceValue',
          style: TextStyle(fontSize: 72),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: _rollDice,
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}

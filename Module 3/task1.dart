import 'dart:math';

import 'package:flutter/material.dart';

class MyApp123 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Number Guessing Game',
      home: GuessingPage(),
    );
  }
}

class GuessingPage extends StatefulWidget {
  @override
  _GuessingPageState createState() => _GuessingPageState();
}

class _GuessingPageState extends State<GuessingPage> {
  late int _randomNumber;
  TextEditingController _guessController = TextEditingController();
  String _message = '';
  bool _showResult = false;

  @override
  void initState() {
    super.initState();
    _generateRandomNumber();
  }

  void _generateRandomNumber() {
    final random = Random();
    _randomNumber = random.nextInt(10) + 1; // Generate a random number between 1 and 10
  }

  void _checkGuess() {
    int? guess = int.tryParse(_guessController.text);
    if (guess != null) {

      setState(()
      {
        if (guess == _randomNumber) {
          _message = 'Congratulations! You guessed the number $_randomNumber!';
        }
        else if (guess < _randomNumber)
        {
          _message = 'Try higher!';
        } else
        {
          _message = 'Try lower!';
        }
        _showResult = true;
      });
    }
  }

  void _resetGame() {
    setState(() {
      _guessController.clear();
      _generateRandomNumber();
      _message = '';
      _showResult = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Guessing Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
          [
            if (_showResult)//true
              Text(
                _message,
                style: TextStyle(fontSize: 20.0),
              ),
            SizedBox(height: 20.0),
            TextField(
              controller: _guessController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter your guess',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _checkGuess,
              child: Text('Check Guess'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _resetGame,
              child: Text('Reset Game'),
            ),
          ],
        ),
      ),
    );
  }
}
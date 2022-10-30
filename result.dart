import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'Your are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty lieable!';
    } else if (resultScore <= 16) {
      resultText = 'You are Strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz!',
            ),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}

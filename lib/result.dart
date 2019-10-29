import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Text(
          'Score: $totalScore',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        FlatButton(
          child: Text('Reset'),
          color: Colors.blue,
          onPressed: resetQuiz,
        )
      ],
    );
  }
}

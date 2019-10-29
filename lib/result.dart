import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'You did it!',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Text(
          'Score: $totalScore',
          style: TextStyle(
            fontSize: 28,
          ),
        )
      ],
    );
  }
}

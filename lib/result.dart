import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalScore;

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('You did it!'),
        Text('Score $totalScore')
      ],
    );
  }
}
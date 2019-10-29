import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List question;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.question,
    @required this.answerQuestion,
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Question(question[questionIndex]['questionText']),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((q) {
          return Answer(() => answerQuestion(q['score']), q['text']);
        }).toList(),
      ],
    );
  }
}

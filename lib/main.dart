import 'package:flutter/material.dart';

import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  bool _final = false;
  final _question = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Dog', 'Fish', 'Rabbit']
    },
  ];

  void _answerQuestion({String prueba}) {
    setState(() {
      if (_questionIndex == _question.length - 1) {
        _questionIndex = 0;
        _final = true;
      } else {
        _questionIndex++;
        _final = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child: !_final
                ? Quiz(question: _question,  answerQuestion: _answerQuestion, questionIndex: _questionIndex)
                : Result(),
          )),
    );
  }
}

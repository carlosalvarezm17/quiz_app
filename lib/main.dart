import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  List question = [
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
      _questionIndex = (_questionIndex == question.length - 1) ? 0 : _questionIndex + 1;
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Question(question[_questionIndex]['questionText']),
                ...(question[_questionIndex]['answers'] as List<String> ).map((q) {
                  return Answer(_answerQuestion, q);
                }).toList(),              
              ],
            ),
          )),
    );
  }
}

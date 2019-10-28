import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  List<String> question = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

  void answerQuestion(){
    setState(() {
      questionIndex = (questionIndex == question.length-1) ? 0 : questionIndex+1;
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
                Text(question[questionIndex]),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: answerQuestion,
                ),
              ],
            ),
          )),
    );
  }
}

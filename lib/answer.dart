import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: RaisedButton(
        color: Colors.blue,
        child: Text('Answer 1'),
        onPressed: () => selectHandler(prueba: 'Hola'),
      ),
    );
  }
}

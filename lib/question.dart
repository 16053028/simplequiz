import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  //__Constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

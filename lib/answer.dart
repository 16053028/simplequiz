import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback btnHandler;
  final String answerText;
  Answer(this.btnHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(onPressed: btnHandler, child: Text(answerText)),
    );
  }
}

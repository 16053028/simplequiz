import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;
  final totalScore;

  Result(this.totalScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Column(children: [
        Text('Your total score is ${totalScore}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Container(
            margin: EdgeInsets.all(5),
            child:
                ElevatedButton(onPressed: resetHandler, child: Text('Reset')))
      ]),
    );
  }
}

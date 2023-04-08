import 'package:flutter/material.dart';

import './layout.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });

    print('Quiz resetted');
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Total score is : ${_totalScore}');
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': '1 + 1 ?',
        'answers': [
          {'text': '2', 'score': 1},
          {'text': '1', 'score': 0},
          {'text': '3', 'score': 0}
        ]
      },
      {
        'questionText': '84 - 1 ?',
        'answers': [
          {'text': '80', 'score': 0},
          {'text': '81', 'score': 0},
          {'text': '83', 'score': 1}
        ]
      },
      {
        'questionText': '4 + 2?',
        'answers': [
          {'text': '10', 'score': 0},
          {'text': '6', 'score': 1},
          {'text': '8', 'score': 0}
        ]
      }
    ];

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Simple quiz'),
          ),
          body: _questionIndex < _questions.length
              ? Layout(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}

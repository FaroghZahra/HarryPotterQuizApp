import 'package:flutter/material.dart';

import './appbar.dart';
import './image.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'text':
          'What was the name of the house-elf that tried to stop Harry from returning to Hogwarts?',
      'answers': [
        {'text':'Dobby','score': 2},
        {'text':'Windy','score': 0},
        {'text':'OldBob','score': 0},
      ]
    },
    {
      'text':
          'Which Hogwarts founder was said to have created the Chamber of Secrets?',
      'answers': [
        {'text':'Slyderin','score': 2},
        {'text':'Gryfinddor','score': 0},
        {'text':'rawenclaw','score': 0},
      ]
    },
    {
      'text':
          'What position does Harry play on his Quidditch team?',
      'answers': [
        {'text':'Keeper','score': 0},
        {'text':'Seeker','score': 2},
        {'text':'Chaser','score': 0},
      ]
    },
    {
      'text':
          'Who is Fluffy?',
      'answers': [
        {'text':'Cat','score': 0},
        {'text':'Owl','score': 0},
        {'text':'Dog','score': 2},
      ]
    },
    {
      'text':
          'What does the Imperius Curse do?',
      'answers': [
        {'text':'Kill','score': 0},
        {'text':'Torture','score': 0},
        {'text':'Control','score': 2},
      ]
    },
  ];

  var _questionindex = 0;
  var _totalScore =0;

  void _nextQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionindex += 1;
    });
  }

  void _resetQuiz(){
    setState(() {
      _totalScore = 0;
      _questionindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(),
        body: _questionindex < _questions.length
        ? MyImage(
          question: _questions,
          questionindex: _questionindex,
          handler: _nextQuestion,
        ) : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

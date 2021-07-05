// ignore_for_file: deprecated_member_use, duplicate_ignore, always_specify_types

import 'package:flutter/material.dart';
import 'package:flutter_complete_gui/result.dart';

import './quiz.dart';
import './result.dart';

//void main() {
//runApp(MyCoolApp());
//}
void main() => runApp(MyCoolApp());

// ignore: use_key_in_widget_constructors
class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MystateApp();
  }
}

class _MystateApp extends State<MyCoolApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Pasta', 'score': 5},
        {'text': 'BBQ', 'score': 3},
        {'text': 'Burger', 'score': 4},
        {'text': 'Suchi', 'score': 6}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Dog', 'score': 3},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Cat', 'score': 3}
      ],
    },
    {
      'questionText': 'Who\'s your favorite fotball player?',
      'answers': [
        {'text': 'Salah', 'score': 6},
        {'text': 'Ronaldo', 'score': 7},
        {'text': 'Messi', 'score': 2},
        {'text': 'pogba', 'score': 8}
      ],
    },
  ];
// ignore: always_specify_types
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    //var aBoll = true;
    //aBool = false;
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more Questions !');
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_final_locals

    // ignore: prefer_final_locals
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // questions = []; doesnot work if questions is a const
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answeQuestions: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}

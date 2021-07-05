// ignore_for_file: always_specify_types, empty_constructor_bodies

import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  late final List<Map<String, Object>> questions;
  late final Function answeQuestions;
  late final int questionIndex;
  // ignore: sort_constructors_first, use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Quiz(
      {required this.questions,
      required this.answeQuestions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Question(
            questions[questionIndex]['questionText'].toString(),
          ),
          // ignore: cast_nullable_to_non_nullable
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(() => answeQuestions(answer['score']),
                answer['text'].toString());
          }).toList()
// ignore: deprecated_member_use
        ],
      );
}

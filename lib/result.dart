// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, always_specify_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  late final int resultScore;
  late VoidCallback resetHandler;
  // ignore: sort_constructors_first
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You did it !';
    if (resultScore <= 10) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 15) {
      resultText = 'Pretty likable !';
    } else if (resultScore <= 20) {
      resultText = 'You are .... strange? !';
    } else {
      resultText = 'You are .....BAD!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: resetHandler,
            child: const Text('Restart Quiz!'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}

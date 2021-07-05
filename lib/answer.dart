import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final VoidCallback selectHandler;
  final String answerText;
  // ignore: sort_constructors_first, prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace

    // ignore: sized_box_for_whitespace

    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,

      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}

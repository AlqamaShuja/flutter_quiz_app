import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback handleClick;

  Answer(this.answerText, this.handleClick);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(onPressed: handleClick, child: Text(answerText)),
    );
  }
}

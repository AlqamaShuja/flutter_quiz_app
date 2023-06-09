import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);

  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(
          question,
          style: const TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ));
  }
}

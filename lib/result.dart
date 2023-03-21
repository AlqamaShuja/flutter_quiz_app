import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback handleResetQuiz;

  Result(this.resultScore, this.handleResetQuiz);

  String get resultPharase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are Awesome";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likeable";
    } else if (resultScore <= 16) {
      resultText = "You are Strange.!";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPharase,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.blue),
          onPressed: handleResetQuiz,
          child: const Text("Start Again"),
        ),
      ],
    ));
  }
}

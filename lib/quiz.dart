import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int) handleQuestionChange;

  Quiz(
      {required this.questions,
      required this.questionIndex,
      required this.handleQuestionChange});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]["question"] as String),
      ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
          .map((ans) {
        return Answer(ans['text'] as String,
            () => handleQuestionChange(ans['score'] as int));
      }).toList(),
    ]);
  }
}

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final questions = [
    {
      'question': "What is your favourite Color?",
      'answer': [
        {
          'text': "Black",
          'score': 8,
        },
        {
          'text': "Blue",
          'score': 4,
        },
        {
          'text': "Green",
          'score': 6,
        },
        {
          'text': 'White',
          'score': 7,
        }
      ]
    },
    {
      'question': "What is your favourite Food?",
      'answer': [
        {
          'text': "Koyla Karhai",
          'score': 4,
        },
        {
          'text': "Beef Burger",
          'score': 2,
        },
        {
          'text': "Zinger Burger",
          'score': 1,
        },
        {
          'text': 'Biryani',
          'score': 0,
        }
      ]
    },
    {
      'question': "What is your favourite hobby?",
      'answer': [
        {
          'text': "Cricket",
          'score': 7,
        },
        {
          'text': "Swimming",
          'score': 3,
        },
        {
          'text': "Hockey",
          'score': 6,
        },
        {
          'text': 'Book Reading',
          'score': 6,
        }
      ]
    },
    {
      'question': "Which one is your favourite Country?",
      'answer': [
        {
          'text': "Aus",
          'score': 6,
        },
        {
          'text': "Ind",
          'score': 6,
        },
        {
          'text': "America",
          'score': 4,
        },
        {
          'text': 'Bangl',
          'score': 7,
        }
      ]
    },
  ];

  void handleQuestionChange(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void handleResetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("First App"),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  questions: questions,
                  questionIndex: _questionIndex,
                  handleQuestionChange: handleQuestionChange)
              : Result(_totalScore, handleResetQuiz)),
    );
  }
}

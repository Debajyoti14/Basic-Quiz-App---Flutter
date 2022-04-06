import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

const _questions = [
  {
    'questionText': 'What kind of Student you are?',
    'answerText': [
      {'text': 'Elementary', 'score': 3},
      {'text': 'High School', 'score': 5},
      {'text': 'College Student', 'score': 10},
      {'text': 'Graduate', 'score': 8}
    ],
  },
  {
    'questionText': 'Where are you currently focusing?',
    'answerText': [
      {'text': 'Personal growth', 'score': 8},
      {'text': 'Academics', 'score': 5},
      {'text': 'Placement', 'score': 7},
      {'text': 'Still Confused', 'score': 3},
    ],
  },
  {
    'questionText': 'How much time do you want to invest for that?',
    'answerText': [
      {'text': '< 1hr', 'score': 2},
      {'text': '1 - 2 hr', 'score': 4},
      {'text': '3 - 4 hr', 'score': 6},
      {'text': '> 6 hr', 'score': 9},
    ],
  }
];

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void AnswerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    } else {
      print('You have completed the quiz');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My App'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    AnswerQuestion: AnswerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(_totalScore, resetQuiz)));
  }
}

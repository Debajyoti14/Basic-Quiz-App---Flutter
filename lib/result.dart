import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int ResultScore;
  final Function resetQuiz;
  const Result(this.ResultScore, this.resetQuiz);

  String get ResultPhrase {
    String ResultText;
    if (ResultScore <= 10) {
      ResultText = 'You are still kid, Enjoy';
    } else if (ResultScore <= 15) {
      ResultText = 'Focus on yourself';
    } else if (ResultScore <= 25) {
      ResultText = 'Just persue what you are passionate about!';
    } else {
      ResultText = 'It\'s high time!';
    }
    return ResultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            ResultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              child: Text('Reset'),
              textColor: Colors.blue,
              onPressed: resetQuiz)
        ],
      ),
    );
  }
}

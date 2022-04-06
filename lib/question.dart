import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String QuestionText;
  Question(this.QuestionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          QuestionText,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ));
  }
}

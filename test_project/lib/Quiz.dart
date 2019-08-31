
import 'package:flutter/material.dart';

import 'Answer.dart';
import 'Question.dart';

class Quiz extends StatelessWidget {
  void Function() answerQuestion;
  List<Map<String, Object>> questions;

  int question_index;

  Quiz(void Function() this.answerQuestion, List<Map<String, Object>> this.questions, int this.question_index);


  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questions[question_index]["question"]),
      ...(questions[question_index]["answers"] as List<String>)
          .map((answer) => new Answer(
        pressHandler: answerQuestion,
        text: answer,
      ))
          .toList(),
    ]);
  }
}
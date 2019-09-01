
import 'package:flutter/material.dart';

import 'Answer.dart';
import 'Question.dart';

class Quiz extends StatelessWidget {
  void Function(int score) answerQuestion;
  List<Map<String, Object>> questions;

  int question_index;

  Quiz(void Function(int score) this.answerQuestion, List<Map<String, Object>> this.questions, int this.question_index);


  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questions[question_index]["question"]),
      ...(questions[question_index]["answers"] as List<Map<String, Object>>)
          .map((answer) => new Answer(
        pressHandler: () => answerQuestion(answer['score']),
        text: answer['text'],
      ))
          .toList(),
    ]);
  }
}
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  Function() resetQuiz;

  Result(int this.totalScore, Function() this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text("Good, your score: $totalScore"),
        ),
        FlatButton(
          child: Text('Restart'),
          onPressed: resetQuiz,
          textColor: Colors.blue,
        )
      ],
    );
  }
}

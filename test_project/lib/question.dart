import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 30),
      ),
      margin: EdgeInsets.all(10),
    );
  }

  Question(this.text);
}

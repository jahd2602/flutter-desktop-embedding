
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function pressHandler;

  final String text;

  const Answer({
    Key key,
    this.pressHandler,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text(text),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: pressHandler,
      ),
    );
  }
}

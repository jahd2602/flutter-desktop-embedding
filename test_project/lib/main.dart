import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Quiz.dart';
import 'Result.dart';

Future main() async {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _questionIndex = 0;
  var _totalScore = 0;

  final questions = [
    {
      "question": "Fav color?",
      "answers": [
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 8}
      ]
    },
    {
      "question": "Fav animal?",
      "answers": [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 1},
        {'text': 'Mouse', 'score': 0}
      ]
    }
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print("Answer question! score: $_totalScore");
    setState(() {
      _questionIndex++;
    });
  }

  void resetQuiz(){
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          _questionIndex < questions.length
              ? Quiz(_answerQuestion, questions, _questionIndex)
              : Result(_totalScore, resetQuiz,),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
    ));
  }
}

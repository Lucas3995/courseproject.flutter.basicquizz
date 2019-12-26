import 'package:flutter/material.dart';

void main() => runApp(QuizzApp());

class QuizzApp extends StatefulWidget {
  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  var questionIndex = 0;

  void answerQuestion(answer) {
    setState(() {
      //incomplete. can be setted to a larger value than the questions count
      questionIndex++;
    });
    print("questionIndex $questionIndex");
    print("Answer $answer");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Test')),
      body: Column(
        children: <Widget>[
          Text(questions[questionIndex]),
          RaisedButton(
              child: Text("Answer1"), onPressed: () => answerQuestion(1)),
          RaisedButton(
              child: Text("Answer2"), onPressed: () => answerQuestion(2)),
          RaisedButton(
              child: Text("Answer3"), onPressed: () => answerQuestion(3))
        ],
      ),
    ));
  }
}

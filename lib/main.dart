import 'package:first_flutter/quiz.dart';
import 'package:first_flutter/result.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  int totalScore =0;

  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  var _questionNumber = 0;

  void Restart(){
    setState(() {
      _questionNumber=0;
      totalScore = 0;
    });
  }

  void answerPressed(int score) {

    totalScore += score;

    setState(() {
      _questionNumber++;
    });
    if (kDebugMode) {
      print(_questionNumber);
      print(totalScore);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: _questionNumber < questions.length
            ? Quiz(
                answerPressed: answerPressed,
                questionNumber: _questionNumber,
                questions: questions)
            : Result(totalScore,Restart),
      ),
    );
  }
}

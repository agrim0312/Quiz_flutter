import 'package:flutter/material.dart';
import './Questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  List<Map<String,Object>> questions;
  final Function answerPressed;
  int questionNumber;

  Quiz({required this.questions,required this.answerPressed,required this.questionNumber});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionNumber]["questionText"]),
        ...(questions[questionNumber]["answers"] as List<Map<String,Object>>)
            .map((answer) {
          return Answers(()=>answerPressed(answer["score"]), answer["text"].toString());
        }).toList()
      ],
    );
  }
}

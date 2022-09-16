import 'package:flutter/material.dart';

class Answers extends StatelessWidget {

  final VoidCallback answerSelected;
  final String answerText;

  Answers(this.answerSelected,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(onPressed:answerSelected,color: Colors.blue, child: Text(answerText),textColor:Colors.white ,));
  }
}

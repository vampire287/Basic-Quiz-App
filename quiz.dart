import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;
  quiz(
      {required this.question,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (question[questionIndex]['questionText']).toString(),
        ),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>answerQuestion(answer['score']), (answer['text']).toString());
        }).toList() 
      ],
    );
  }
}

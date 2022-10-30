import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var question = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 10},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Lion', 'score': 2}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 8},
        {'text': 'Anurag', 'score': 10},
        {'text': 'Rahul', 'score': 7},
        {'text': 'Yash', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore=0;
  void _resetQuiz(){
    setState((){
      _questionIndex=0;
      _totalScore=0;
    });
  }
  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < question.length
            ? quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: question,
              )
            : result(_totalScore,_resetQuiz),
      ),
    );
  }
}

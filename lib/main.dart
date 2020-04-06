import "package:flutter/material.dart";

import "./answer.dart";
import "./question.dart";
import "./result.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var score = 0;

  var questions = [
    {
      "quesText": "What is the capital of India ?",
      "ansText": [
        ["Mumbai", 0],
        ["New Delhi", 1],
        ["Bengaluru", 0]
      ]
    },
    {
      "quesText": "Who is the captain of Indian Cricket Team ?",
      "ansText": [
        ["MS Dhoni", 1],
        ["Sachin Tendulkar", 0],
        ["Dinesh Kartik", 0]
      ]
    },
    {
      "quesText": "What is India's national bird ?",
      "ansText": [
        ["Swan", 0],
        ["Peacock", 1],
        ["Eagle", 0]
      ],
    },
  ];

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      score = 0;
    });
  }

  void answerQuestion(idx) {
    print(score);
    setState(() {
      if (questionIndex < questions.length)
        score += (questions[questionIndex]["ansText"] as List)[idx][1];
      questionIndex += 1;
    });

    if (questionIndex < questions.length)
      print("We have more questions");
    else
      print("Quiz ended !");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(30, 30, 30, 1),
            appBar: AppBar(
                bottom: PreferredSize(
                    child: Container(
                      color: Colors.orange,
                      height: 6.0,
                    ),
                    preferredSize: Size.fromHeight(7.0)),
                backgroundColor: Color.fromRGBO(30, 30, 30, 1),
                title: Container(
                  width: double.infinity,
                  child: Text(
                    "Quiz App",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                  ),
                )),
            body: Center(
              child: questionIndex < questions.length
                  ? Column(children: <Widget>[
                      Question(questions[questionIndex]["quesText"]),
                      Answer(answerQuestion, 0,
                          (questions[questionIndex]["ansText"] as List)[0][0]),
                      Answer(answerQuestion, 1,
                          (questions[questionIndex]["ansText"] as List)[1][0]),
                      Answer(answerQuestion, 2,
                          (questions[questionIndex]["ansText"] as List)[2][0]),
                    ])
                  : Result(score, resetQuiz),
            )));
  }
}

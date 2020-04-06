import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function answerQuestionHandle;
  final String answerText;
  final int idx;

  Answer(this.answerQuestionHandle, this.idx, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.orange,
        textColor: Colors.white,
        onPressed: () => answerQuestionHandle(idx),
      ),
    );
  }
}

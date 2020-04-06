import "package:flutter/material.dart";

class Question extends StatelessWidget {
  String questionHandle;

  Question(this.questionHandle);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(questionHandle,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 28)));
  }
}

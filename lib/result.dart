import "package:flutter/material.dart";

class Result extends StatelessWidget {
  var scoreFinal;
  Function resetQuizHandle;

  Result(this.scoreFinal, this.resetQuizHandle);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          "Well Done !",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          "Score = $scoreFinal",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
          width: 200.0,
          margin: EdgeInsets.all(20),
          child: RaisedButton(
            child: Text("Play Again", style: TextStyle(fontSize: 22)),
            color: Colors.orange,
            textColor: Colors.white,
            onPressed: resetQuizHandle,
          ))
    ]);
  }
}

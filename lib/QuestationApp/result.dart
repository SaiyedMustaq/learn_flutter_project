import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultParse {
    var resultText = "You did it!..";
    if (resultScore <= 8) {
      resultText = "You are awasome and innocent!.";
    } else if (resultScore <= 12) {
      resultText = "Pretty likable!.";
    } else if (resultScore < 16) {
      resultText = "You are... strange?!.";
    } else {
      resultText = "You are so bad.";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          resultParse,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text("Restart Quiz!",style: TextStyle(color: Colors.blue),),
          onPressed: resetQuiz
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:learn_flutter/QuestationApp/quiz.dart';
import 'package:learn_flutter/QuestationApp/result.dart';

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Portfolio',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: QuizAppPage());
  }
}

class QuizAppPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<QuizAppPage> {
  var _questationIndex = 0;
  var _totalScore = 0;


  void _resetQuiz(){
    setState(() {
    _totalScore=0;
    _questationIndex=0;  
    });
    

  }

  final _questations = const [
    {
      'questationText': 'What is your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Yellow', 'score': 1}
      ]
    },
    {
      'questationText': 'What is your favourite animal?',
      'answer': [
        {'text': 'Got', 'score': 10},
        {'text': 'Hen', 'score': 20},
        {'text': 'Horce', 'score': 15},
        {'text': 'Camel', 'score': 8}
      ]
    },
    {
      'questationText': 'What is your favourite place?',
      'answer': [
        {'text': 'Ahmedabad', 'score': 12},
        {'text': 'Laddhak', 'score': 15},
        {'text': 'Manali', 'score': 4},
        {'text': 'Aabu', 'score': 2}
      ]
    },
    {
      'questationText': 'What is your favourite games?',
      'answer': [
        {'text': 'Pool Table', 'score': 1},
        {'text': 'Cricket', 'score': 6},
        {'text': 'Foorball', 'score': 5},
        {'text': 'Vollyball', 'score': 7}
      ]
    },
  ];

  
  void _andwerQuestation(int score) {
      _totalScore = _totalScore + score;
    setState(() {
      _questationIndex = _questationIndex + 1;
    });
  }

  void _onLognPress() {
    setState(() {
      print("On Long Press");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: _questationIndex < _questations.length
          ? Quiz(
              andwerQuestation: _andwerQuestation,
              questationIndex: _questationIndex,
              onLognPress: _onLognPress,
              questation: _questations,
            )
          : Result(_totalScore,_resetQuiz),
    );
  }
}

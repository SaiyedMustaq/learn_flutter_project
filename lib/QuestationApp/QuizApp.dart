import 'package:flutter/material.dart';
import 'package:learn_flutter/QuestationApp/answer.dart';
import 'package:learn_flutter/QuestationApp/questation.dart';

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

  final questations = const [
    {
      'questationText': 'What is your favourite color?',
      'answer': ['Black', 'White', 'Red', 'Yellow']
    },
    {
      'questationText': 'What is your favourite animal?',
      'answer': ['Got', 'Hen', 'Horce', 'Camel']
    },
    {
      'questationText': 'What is your favourite place?',
      'answer': ['Ahmedabad', 'Laddhak', 'Manali', 'Aabu']
    },
    {
      'questationText': 'What is your favourite games?',
      'answer': ['Pool Table', 'Cricket', 'Foorball', 'Vollyball']
    },
  ];

  void _andwerQuestation() {
    bool aBool = true;
    if (_questationIndex < questations.length) {
      setState(() {
        _questationIndex = _questationIndex + 1;
      });
    } else {
      aBool = false;
    }
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
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Questation(questations[_questationIndex]['questationText']),
            ...(questations[_questationIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_andwerQuestation, _onLognPress, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      child: Text("Ans 1"),
      textColor: Colors.white,
      onPressed: () {},
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learn_flutter/QuestationApp/MyCustomText.dart';
import 'package:learn_flutter/QuestationApp/MyRisedButton.dart';

class AssignMent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Portfolio',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AssignMentPage());
  }
}

class AssignMentPage extends StatefulWidget {
  @override
  _AssignMentPageState createState() => _AssignMentPageState();
}

class _AssignMentPageState extends State<AssignMentPage> {
  var _myIndex = 0;
  final textList = ['Apple', 'Banana', 'Graps'];
  void _onPressed() {
    setState(() {
      _myIndex = _myIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignement 1"),
        centerTitle: true,
      ),
      body: _myIndex < textList.length
          ? Column(
              children: [
                MyRaisedButton(_onPressed,false),
                MyCustomText(textList, _myIndex)
              ],
            )
          : Center(
              child: Text("Done"),
            ),
    );
  }
}

import 'package:flutter/material.dart';

class CardAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Card Animation",
      theme: ThemeData(
          primaryColor: Colors.deepOrange,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: MyCardAnimation(
        pageTitle: "My Card Animation",
      ),
    );
  }
}

class MyCardAnimation extends StatefulWidget {
  MyCardAnimation({Key key, this.pageTitle}) : super(key: key);
  final String pageTitle;

  @override
  State<StatefulWidget> createState() {
      _MyCardAnimationState();
  }
}

class _MyCardAnimationState extends State<MyCardAnimation>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }

}

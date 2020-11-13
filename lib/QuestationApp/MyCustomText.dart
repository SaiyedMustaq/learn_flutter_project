import 'package:flutter/material.dart';

class MyCustomText extends StatelessWidget{
  final List<String> textList;
  final int textListIndex;

  MyCustomText(this.textList,this.textListIndex);
  @override
  Widget build(BuildContext context) {
      return Text(textList[textListIndex]);
  }

}
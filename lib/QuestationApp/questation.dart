import 'package:flutter/material.dart';

class Questation extends StatelessWidget {
  final String textValue;
  Questation(this.textValue);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: Text(
        textValue,
        style: TextStyle(
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

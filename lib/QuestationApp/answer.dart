import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onClickFunction;
  final Function onLongClickPress;
  final String ansText;
  
  Answer(this.onClickFunction, this.onLongClickPress,this.ansText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
         ansText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        color: Colors.blue,
        onLongPress: onLongClickPress,
        onPressed: onClickFunction,

      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyRaisedButton extends StatelessWidget {
  final Function onClick;

  final bool inCart;

  MyRaisedButton(this.onClick,this.inCart);

  
  @override
  Widget build(BuildContext context) {

    Color _getColor(BuildContext context){
      return inCart ? Colors.black54 :Theme.of(context).primaryColor;
    }
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: _getColor(context),
        onPressed: onClick,
        child: Text("Click"),
      ),
    );
  }
}

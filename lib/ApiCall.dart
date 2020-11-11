import 'package:flutter/material.dart';

class ApiCall extends StatefulWidget {
  ApiCall({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyApiCall createState() => _MyApiCall();
}

class _MyApiCall extends State<ApiCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Call"),
      ),
      body: Center(

      ),
    );
  }
}

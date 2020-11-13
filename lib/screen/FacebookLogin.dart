import 'package:flutter/material.dart';

class FacebookLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FacebookDetails();
  }
}

class FacebookDetails extends StatefulWidget {
  @override
  _FacebookDetailsState createState() => _FacebookDetailsState();
}

class _FacebookDetailsState extends State<FacebookDetails> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      brightness: Brightness.light,
      centerTitle: true,
      bottomOpacity: 12,
      title: Text("Facebook"),
    );
  }
}

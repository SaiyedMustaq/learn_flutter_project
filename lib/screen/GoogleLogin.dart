import 'package:flutter/material.dart';

class GoogleLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Googlepage();
  }
}

class Googlepage extends StatefulWidget {
  @override
  _GooglepageState createState() => _GooglepageState();
}

class _GooglepageState extends State<Googlepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Page"),
      ),
    );
  }
}

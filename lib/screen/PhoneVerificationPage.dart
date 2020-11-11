import 'package:flutter/material.dart';

class PhonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhonePageState(title: 'Mobile Otp'),
    );
  }
}

class PhonePageState extends StatefulWidget {
  PhonePageState({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _PhonePageStateState createState() => _PhonePageStateState();
}

class _PhonePageStateState extends State<PhonePageState> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Enter Phone Number",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Will Send to conficmation code on your enter mobile number",
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                decoration: InputDecoration(labelText: 'Enter Mobile Number'),
                cursorColor: Colors.blue),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: RaisedButton(
                  color: Colors.blue[600],
                  child: Text(
                    "NEXT",
                    style: TextStyle(fontSize: 17.0),
                  ),
                  textColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LoginPageFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginpageFive();
  }
}

class LoginpageFive extends StatefulWidget {
  @override
  _LoginPageFiveState createState() => _LoginPageFiveState();
}

class _LoginPageFiveState extends State<LoginpageFive> {

  String _email;
  String _password;
  String _errorMessage;

  // Initial form is login form
  //FormMode _formMode = FormMode.LOGIN;
  bool _isIos;
  bool _isLoading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/jelly.jpg"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.srgbToLinearGamma()),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "existing member",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
          Container(height: 1, color: Colors.black),
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Center(child: Text("if you are new then click hear")),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    color: Colors.pinkAccent,
                    colorBrightness: Brightness.dark,
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(child: Text("or continue with")),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {},
                          child: Text(
                            "Google",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.red[600],
                        ),
                        RaisedButton(
                            onPressed: () {},
                            child: Text("Facebook",
                                style: TextStyle(color: Colors.white)),
                            color: Colors.blue[900])
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LoginPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginpageTwo();
  }
}

class LoginpageTwo extends StatefulWidget {
  @override
  __LoginPageTwoState createState() => __LoginPageTwoState();
}

class __LoginPageTwoState extends State<LoginpageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Signin with your social acount",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/ic_facebook.png",
                      height: 50,
                      width: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Image.asset(
                      "assets/ic_googleplus.png",
                      height: 50,
                      width: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Image.asset(
                      "assets/ic_twitter.png",
                      height: 50,
                      width: 50,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("OR"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "Signin with email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Enter Name"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Enter Password"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[_primarybutton("Sign In")],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.bottomRight  ,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Text("__________________________________________________"),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Don't have an acount"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Sign up today."),
              )
            ],
          ),
        ),
      ),
    );
  }
}

_primarybutton(String s) {
  return RaisedButton(
    padding: EdgeInsets.all(11.0),
    onPressed: () {},
    color: Colors.deepOrange,
    textColor: Colors.white,
    child: Text(s),
    shape: Border.all(color: Colors.white),
  );
}

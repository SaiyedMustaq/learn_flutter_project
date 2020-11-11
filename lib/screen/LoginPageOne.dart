import 'package:flutter/material.dart';

class LoginPageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginpageOne();
  }
}

class LoginpageOne extends StatefulWidget {
  @override
  _LoginPageOneState createState() => _LoginPageOneState();
}

class _LoginPageOneState extends State<LoginpageOne> {
  String name = "mustaq@123";
  String password = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "Welcome to app name",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.deepOrange),
                            textScaleFactor: 1,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _googlebutton("Google", Icons.ac_unit),
                          Padding(
                            padding: EdgeInsets.all(10),
                          ),
                          _facebookbutton("Facebook", Icons.ac_unit)
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Divider(
                                height: 1,
                                color: Colors.black,
                              ),
                              Text(
                                "OR",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Divider(
                                height: 1,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(30.0)),
                                borderSide: const BorderSide(
                                    color: Colors.deepOrange,
                                    width: 1.0,
                                    style: BorderStyle.solid)),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 2.0,
                                    style: BorderStyle.solid)),
                            helperStyle: TextStyle(color: Colors.black),
                            hintText: "Enter Name or Email"),
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.send,
                        textCapitalization: TextCapitalization.sentences,
                        style: TextStyle(color: Colors.black),
                        //maxLength: 10,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(40)),
                                borderSide: const BorderSide(
                                    color: Colors.deepOrange,
                                    width: 1.0,
                                    style: BorderStyle.solid)),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.0,
                                    style: BorderStyle.solid)),
                            hintText: "Enter Password"),
                        textDirection: TextDirection.ltr,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.send,
                        textCapitalization: TextCapitalization.sentences,
                        style: TextStyle(color: Colors.black),
                        //maxLength: 10,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.only(top: 50, left: 10, right: 10),
                          child: _primarybutton("Continue"),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        "Already have acount",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "By Signin in, I agree to terms and condition",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    )
                  ],
                ),
              )),
        ));
  }
}

_primarybutton(String s) {
  return RaisedButton(
    onPressed: () {},
    color: Colors.deepOrange,
    textColor: Colors.white,
    child: Text(s),
    shape: Border.all(color: Colors.white),
  );
}

_myButton(String titile, String url) {
  return Container(
    child: Row(
      children: <Widget>[
        Text(titile),
        Image(
          image: AssetImage(url),
        )
      ],
    ),
  );
}

_googlebutton(String title, IconData ico) {
  return RaisedButton.icon(
    onPressed: () {},
    color: Colors.white,
    textColor: Colors.red,
    icon: Icon(ico),
    label: Flexible(
        child: Padding(
      padding: const EdgeInsets.all(15),
      child: Text(title, style: TextStyle(fontSize: 15.5)),
    )),
    shape: Border.all(color: Colors.red, style: BorderStyle.solid),
  );
}

_facebookbutton(String title, IconData ico) {
  return RaisedButton.icon(
    onPressed: () {},
    color: Colors.white,
    textColor: Colors.blueAccent,
    icon: Icon(ico),
    label: Flexible(
        child: Padding(
      padding: const EdgeInsets.all(15),
      child: Text(title, style: TextStyle(fontSize: 15.5)),
    )),
    shape: Border.all(color: Colors.blueAccent, style: BorderStyle.solid),
  );
}

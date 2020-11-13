import 'package:flutter/material.dart';

class LoginPageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginpageThree();
  }
}

class LoginpageThree extends StatefulWidget {
  @override
  __LoginPageThreeState createState() => __LoginPageThreeState();
}

class __LoginPageThreeState extends State<LoginpageThree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                  title: Text("Login"),
                ),
                body: SafeArea(
                    child: Column(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/shoping.jpg"))),
                    height: MediaQuery.of(context).size.height / 5.2,
                  ),
                  PreferredSize(
                    preferredSize: Size.fromHeight(50.0),
                    child: TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          text: 'LOGIN',
                        ),
                        Tab(
                          text: 'LOGOUT',
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.width / 4,
                                  child: Center(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Enter Password"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.width / 7,
                                  child: Center(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Enter Password"),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                ),
                                _primarybutton("Login"),
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                ),
                                Text("Forgot Pssword"),
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                ),
                                Text(
                                  "OR JOIN WITH",
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 40, top: 10),
                                          child: Image.asset(
                                            "assets/ic_facebook.png",
                                            height: 50,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 40, top: 10),
                                          child: Image.asset(
                                            "assets/ic_googleplus.png",
                                            height: 50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: MediaQuery.of(context).size.width / 4,
                                    child: Center(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Enter Password"),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.width / 7,
                                    child: Center(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: "Enter Password"),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Radio(
                                        
                                        value: 0, groupValue: null, onChanged: (int value) {  },
                                      ),
                                      Text(
                                        'I agree to Privecy Polices and Condition of Use',
                                        style: new TextStyle(fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Radio(
                                        value: 0,
                                      ),
                                      Text(
                                        'I want to recive exclusive offer and news by Email',
                                        style: new TextStyle(fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                  _primarybutton("Sign Up"),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                  ),
                                  Text("Forgot Pssword"),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                  ),
                                  Text(
                                    "OR JOIN WITH",
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 40, top: 10),
                                            child: Image.asset(
                                              "assets/ic_facebook.png",
                                              height: 50,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 40, top: 10),
                                            child: Image.asset(
                                              "assets/ic_googleplus.png",
                                              height: 50,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ])))));
  }
}

_primarybutton(String s) {
  return RaisedButton(
    onPressed: () {},
    color: Colors.black,
    textColor: Colors.white,
    child: Text(s),
    shape: Border.all(color: Colors.black),
  );
}

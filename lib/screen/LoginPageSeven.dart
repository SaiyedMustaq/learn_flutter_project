import 'package:flutter/material.dart';

class LoginPageSeven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Loginpageseven();
  }
}

class Loginpageseven extends StatefulWidget {
  @override
  _LoginpagesevenState createState() => _LoginpagesevenState();
}

class _LoginpagesevenState extends State<Loginpageseven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.blue[300], Colors.blue[800]]),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("App Name",
                          style:
                          TextStyle(fontSize: 25.0, color: Colors.white)),
                      _socialWidget()
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                color: Colors.blue[100],
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(15)),
                        _buttonWithIcon(
                            "CONTINUE WITH GOOGLE", Icons.ac_unit, 1),
                        Padding(padding: EdgeInsets.all(15)),
                        _buttonWithIcon(
                            "CONTINUE WITH FACEBOOK", Icons.account_balance, 2),
                        Padding(padding: EdgeInsets.all(15)),
                        _buttonWithIcon("CONTINUE WITH PHONE", Icons.phone, 3),
                        Padding(padding: EdgeInsets.all(15)),
                        _button("Login"),
                        Padding(padding: EdgeInsets.all(15)),
                        Text(
                          "Tearm and Condition",
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buttonWithIcon(String title, IconData ico, int screen) {
    return RaisedButton.icon(
      onPressed: () => _selectedButton(screen),
      color: Colors.white,
      textColor: Colors.blue,
      icon: Flexible(flex: 1, child: Icon(ico)),
      label: Flexible(
          flex: 4,
          fit: FlexFit.tight,
          child: Text(title, style: TextStyle(fontSize: 15.5))),
      shape: Border.all(color: Colors.blue, style: BorderStyle.solid),
    );
  }

  _button(String title) {
    return RaisedButton(
      onPressed: () {},
      color: Colors.white,
      textColor: Colors.blue,
      child: Text(title),
      shape: Border.all(color: Colors.blue, style: BorderStyle.solid),
    );
  }

  _selectedButton(int myScreen) {
    switch (myScreen) {
      case 1:
      /* Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPageOne()),
        );*/
        break;
      case 2:
      /* Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPageTwo()),
        );*/
        break;
      case 3:
      /*Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPageThree()),
        );*/
        break;
    }
    return null;
  }
}

class _socialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: <Widget>[
          FlatButton(onPressed: () {}, child: Image.asset("")),
          Text("DATA")
        ],
      );
  }
}

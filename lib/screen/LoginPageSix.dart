import 'package:flutter/material.dart';

class LoginPageSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Loginpagesix();
  }
}

class Loginpagesix extends StatefulWidget {
  @override
  _LoginpagesixState createState() => _LoginpagesixState();
}

class _LoginpagesixState extends State<Loginpagesix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.orange[300], Colors.orange[800]]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.email,
                      color: Colors.white,
                      size: 100,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 40.0),
                    ),
                  )
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 45,
                        padding: EdgeInsets.only(
                            top: 4, right: 16, left: 16, bottom: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.orange, blurRadius: 5),
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.email, color: Colors.grey),
                            hintText: "Emial",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: 45,
                          margin: EdgeInsets.only(top: 15),
                          padding: EdgeInsets.only(
                              top: 4, right: 16, left: 16, bottom: 4),
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(50)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.orange, blurRadius: 5),
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(Icons.security, color: Colors.grey),
                              hintText: "Password",
                            ),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, right: 36),
                            child: Text(
                              "Forgot Passwod ?",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ))
                    ],
                  ),
                )),
            new GestureDetector(
              onTap: (){
                print("CLick");
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orange[300], Colors.orange[600]]),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Alreddy acount/Signup",
                style: TextStyle(color: Colors.red, fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LoginPageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Loginpagefour();
  }
}

class Loginpagefour extends StatefulWidget {
  @override
  _LoginPageFourState createState() => _LoginPageFourState();
}

class _LoginPageFourState extends State<Loginpagefour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "sign in".toUpperCase(),
                  style: TextStyle(fontSize: 40.0, color: Colors.black),
                ),
              ),
            ),
            Text(
              "Registread Customers".toUpperCase(),
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "if you have shoped with us before, please enter tour acount infotmation below to continue shoping",
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Not a memeber?",
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: _commonTextView(
                "Register Now".toUpperCase(),
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: _blackborderEditetxt("Enter User Name"),
            ),
            _blackborderEditetxt("Enter Password"),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: _commonTextView(
                "Forgot Your Password?",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: _primaryButton("Login"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Conntect With Social",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Image.asset("assets/ic_googleplus.png",height: 40,width: 40,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Image.asset("assets/ic_facebook.png",height: 40,width: 40,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Image.asset("assets/ic_twitter.png",height: 40,width: 40,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Image.asset("assets/ic_linkedin.png",height: 40,width: 40,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Image.asset("assets/ic_snapchat.png",height: 40,width: 40,),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _blackborderEditetxt(String s) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(10)),
                  borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                      style: BorderStyle.solid)),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                      style: BorderStyle.solid)),
              hintStyle: TextStyle(color: Colors.black),
              hintText: s),
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.send,
          textCapitalization: TextCapitalization.sentences,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

_primaryButton(String s) {
  return Container(
    child: RaisedButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          s,
          style: TextStyle(fontSize: 20),
        ),
      ),
      color: Colors.black,
      textColor: Colors.white,
    ),
  );
}

_commonTextView(String s, {TextStyle style}) {
  return Container(
      child: Text(
    s,
    style:
        TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),
  ));
}

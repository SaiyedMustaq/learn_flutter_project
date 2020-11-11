import 'package:flutter/material.dart';

class MobileOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MOBILEOTPPAGE(title: 'OTP'),
    );
  }
}

class MOBILEOTPPAGE extends StatefulWidget {
  MOBILEOTPPAGE({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MobileOtpState createState() => _MobileOtpState();
}

class _MobileOtpState extends State<MOBILEOTPPAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarOpacity: 1,
        title: Text("OTP"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 0, right: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Enter your confirmation code",
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "We sent a 4 digit code to mobile number",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: double.infinity),
                  child: RaisedButton(
                    onPressed: () {},
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
      ),
    );
  }
}

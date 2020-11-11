import 'package:flutter/material.dart';
import 'package:learn_flutter/screen/PhoneVerificationPage.dart';

import '../FacebookLogin.dart';
import '../screen/GoogleLogin.dart';
import '../screen/MobielOtp.dart';

class OlxMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OlxHomePage(title: 'Home Page'),
    );
  }
}

class OlxHomePage extends StatefulWidget {
  OlxHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OlxHomePageState createState() => _OlxHomePageState();
}

class _OlxHomePageState extends State<OlxHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Msutaq Saiyed"),
              accountEmail: Text("mustaq.saiyed@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Text(
                  "SM",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            new Column(
              children: <Widget>[
                ListTile(
                  title: Text("Google"),
                  trailing: Icon(Icons.android),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GoogleLogin()),
                    );
                  },
                ),
                ListTile(
                  title: Text("Facebook"),
                  trailing: Icon(Icons.android),
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FacebookLogin()),
                  );
                  },
                ),
                ListTile(
                  title: Text("Mobile"),
                  trailing: Icon(Icons.android),
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MobileOtp()),
                  );
                  },
                ),
              ],
            )
          ],
        )),
        body: PhonePage());
  }

  _button(String title, IconData ico, int screen) {
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

  _selectedButton(int myScreen) {
    switch (myScreen) {
      case 1:
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GoogleLogin()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FacebookLogin()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PhonePage()),
        );
        break;
    }
    return null;
  }
}

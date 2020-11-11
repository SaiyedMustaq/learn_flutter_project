import 'package:flutter/material.dart';

import '../screen/LoginPageFive.dart';
import '../screen/LoginPageFour.dart';
import '../screen/LoginPageOne.dart';
import '../screen/LoginPageSeven.dart';
import '../screen/LoginPageSix.dart';
import '../screen/LoginPageThree.dart';
import '../screen/LoginPageTwo.dart';


class LoginPagesMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.deepOrange,
          scaffoldBackgroundColor: Colors.white),
      home: LoginPagesMainPage(title: 'Profile Page'),
    );
  }
}

class LoginPagesMainPage extends StatefulWidget {
  LoginPagesMainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPagesMainState createState() => _LoginPagesMainState();
}

class _LoginPagesMainState extends State<LoginPagesMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              widget.title,
              style: TextStyle(),
              textAlign: TextAlign.center,
            )),
      ),
      drawer: Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Msutaq Saiyed"),
                accountEmail: Text("mustaq.saiyed@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                      ? Colors.blue
                      : Colors.white,
                  child: Image.asset("assets/ic_circle.png"),
                ),
              ),
              new Column(
                children: <Widget>[
                  ListTile(
                    title: Text("Login Page 1"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPageOne()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Login Page 2"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPageTwo()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Login Page 3"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPageThree()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Login Page 4"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPageFour()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Login Page 5"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginpageFive()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Login Page 6"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginpagesix()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Login Page 7"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginpageseven()),
                      );
                    },
                  ),
                ],
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                child: Image.asset("assets/ic_cover_image.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "User information",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          )),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.email,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("Email"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:5),
                                    child: Text("saiyedmscit16@gmial.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.phone,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("Phone"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:5),
                                    child: Text("+917041702096",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.deepOrange),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.web,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("Website"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:5),
                                    child: Text("Not Available",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.person,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("About"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:5),
                                    child: Text("I am devloper",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.deepOrange),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Icon(
                                Icons.date_range,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("Date of birth"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text("15/05/1995",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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
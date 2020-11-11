import 'package:flutter/material.dart';

void main() {
  runApp(TabBarWithIcon());
}

class TabBarWithIcon extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.assignment_ind),
                ),
                Tab(
                  icon: Icon(Icons.call),
                ),
                Tab(
                  icon: Icon(Icons.chat_bubble),
                ),
              ]),
              title: Text("TAB DEMO WITH ICON"),
            ),
            body: TabBarView(children: [
              Icon(Icons.assignment_ind),
              Icon(Icons.call),
              Icon(Icons.chat_bubble),
            ]),
          )),
    );
  }
}
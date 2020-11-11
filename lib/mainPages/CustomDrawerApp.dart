import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MenuDashboardLayout.dart';

class CustomDrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuDashBoardPage(),
    );
  }
}

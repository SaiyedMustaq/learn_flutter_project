import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../color/ColorPlate.dart';

class ViClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Vi Clone",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: ViClonePage(),
    );
  }
}

class ViClonePage extends StatefulWidget {
  @override
  _ViClonePage createState() => _ViClonePage();
}

class _ViClonePage extends State<ViClonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [CardWidget()],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Mustaq Saiyed \n 7041702096",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              width: 40,
              height: 40,
              child: Icon(
                Icons.arrow_drop_down,
                size: 20,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueAccent,
              ),
            )
          ],
        ),
        Card(
          elevation: 10.0,
          child: Container(
              color: Bron_Color_OP_10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 0, top: 10, bottom: 0),
                              child: Row(
                                children: [
                                  Text(
                                    "3.7",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "GB",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                        child: Card(
                          margin: EdgeInsets.only(top: 10, left: 20),
                          elevation: 12.0,
                          child: Container(
                            color: Bron_Color,
                            height: 80,
                            padding: EdgeInsets.only(top: 10, right: 15),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 0, right: 0, top: 5, bottom: 20),
                                    child: Text(
                                      "Truely \n unlimited calls",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ))),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                    child: Text(
                      "Data Left",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Text(
                      "-----------------------------------------------------------------------------------------------------"),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Package valid till 29 Oct,2020",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "recharge now",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "recharge now",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black38,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: myBorderRadious(),
                          side: BorderSide(width: 5, color: Colors.white)),
                      elevation: 10,
                      child: Container(
                        height: 250,
                        color: Colors.deepPurpleAccent,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    myMediumText(
                                        "Enjoy double data \n Rechnage Rs.299"),
                                    myLargeBoldText(
                                      "recharge now >>",
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueAccent,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
        )
      ],
    );
  }
}

BorderRadius myBorderRadious() {
  return BorderRadius.only(
      bottomLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomRight: Radius.circular(10),
      topLeft: Radius.circular(10));
}

Text mySmallText(String text) {
  return Text(text, style: TextStyle(fontSize: 12));
}

Text mySmallBoldText(String text) {
  return Text(text,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold));
}

Text myMediumText(String text) {
  return Text(text, style: TextStyle(fontSize: 18));
}

Text myMediumBoldText(String text) {
  return Text(text,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold));
}

Text myLargeText(String text) {
  return Text(text, style: TextStyle(fontSize: 22));
}

Text myLargeBoldText(String text) {
  return Text(text,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold));
}

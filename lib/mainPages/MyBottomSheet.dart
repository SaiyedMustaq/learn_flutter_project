import 'package:flutter/material.dart';


class MyBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Sheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomSheetPage(title: 'Flutter Bottom Sheet'),
    );
  }
}

class BottomSheetPage extends StatefulWidget {
  BottomSheetPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BottomSheetPageState createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _settingModalBottomSheet(context);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext buildcontext) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10),
                topRight: const Radius.circular(10),
              )),
          child: new Wrap(
            children: <Widget>[
              _bottomItem(Icons.accessibility, "User"),
              _bottomItem(Icons.access_alarms, "Alaram"),
              _bottomItem(Icons.accessibility, "User"),
              _bottomItem(Icons.access_alarms, "Alaram"),
            ],
          ),
        );
      });
}

_bottomItem(IconData iconData, String s) {
  return ListTile(
    leading: new Icon(iconData),
    title: new Text(s),
    onTap: () => _selectItem("State"),
  );
}

_selectItem(state) {}
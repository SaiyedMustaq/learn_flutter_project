import 'package:flutter/material.dart';


class BottomNavigationPage extends StatefulWidget {

  final String title;

  const BottomNavigationPage({Key key, this.title}) : super(key: key);

  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<BottomNavigationPage> {
  var _showFab = true;
  var _showNotch = true;
  var _fabLocation = FloatingActionButtonLocation.endDocked;

  void _onShowNotchChanged(bool value) {
    setState(() {
      _showNotch = value;
    });
  }

  void _onShowFabeChange(bool value){
    setState(() {
      _showFab=value;
    });
  }


  void onFabLocationChanged(FloatingActionButtonLocation value) {
    setState(() {
      _fabLocation = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 8),
        children: [
          SwitchListTile(
            title: Text("Floating Action Buttom"),
            value: _showFab,
            onChanged: _onShowFabeChange,
          ),
          SwitchListTile(
            title: Text("Notch"),
            value: _showNotch,
            onChanged: _onShowNotchChanged,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text("Floating Button Position"),
          ),
          RadioListTile(
            title: Text("Docked End"),
            value: FloatingActionButtonLocation.endDocked,
            groupValue: _fabLocation,
            onChanged: onFabLocationChanged,
          ),
          RadioListTile(
            title: Text("Docked Center"),
            value: FloatingActionButtonLocation.centerDocked,
            groupValue: _fabLocation,
            onChanged: onFabLocationChanged,
          ),
          RadioListTile(
            title: Text("Floating End"),
            value: FloatingActionButtonLocation.endFloat,
            groupValue: _fabLocation,
            onChanged: onFabLocationChanged,
          ),
          RadioListTile(
            title: Text("Floating Center"),
            value: FloatingActionButtonLocation.centerFloat,
            groupValue: _fabLocation,
            onChanged: onFabLocationChanged,
          )
        ],
      ),
      floatingActionButton: _showFab
          ? FloatingActionButton(
        onPressed: () {
          print("Demo");
        },
        child: const Icon(Icons.add),
        tooltip: "Demo",
      )
          : null,
      floatingActionButtonLocation: _fabLocation,
      bottomNavigationBar: _BottomAppBar(
          Location: _fabLocation,
          shape: _showNotch ? const CircularNotchedRectangle() : null),
    );
  }
}

class _BottomAppBar extends StatelessWidget {
  const _BottomAppBar({this.Location, this.shape});

  final FloatingActionButtonLocation Location;
  final NotchedShape shape;

  static final centerLocation = <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      child: IconTheme(
        data: IconThemeData(color: Colors.pink),
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_balance_wallet, color: Colors.blue),
              color: Colors.pink,
              iconSize: 35.0,
            ),
            if (centerLocation.contains(Location)) const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.blue),
              iconSize: 35.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline, color: Colors.blue),
              iconSize: 35.0,
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../apiCall/ApiCall.dart';

class CardMain extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ApiCall(title: 'Flutter Demo Home Page'),
    );
  }
}

class CardPage extends StatefulWidget {
  CardPage({Key key, this.title}) : super(key: key);
  final String title;
  final _color = Colors.blue;

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _frontScale;
  Animation<double> _backScale;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _frontScale = new Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.0, 0.5, curve: Curves.easeIn),
    ));
    _backScale = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.5, 1.0, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.crop_rotate),
          onPressed: () {
            setState(() {
              if (_controller.isCompleted || _controller.velocity > 0)
                _controller.reverse();
              else
                _controller.forward();
            });
          }),
      body: new Center(
        child: new Stack(
          children: <Widget>[
            new AnimatedBuilder(
              child: new MyCustomCard(colors: Colors.blue),
              animation: _backScale,
              builder: (BuildContext context, Widget child) {
                final Matrix4 transform = new Matrix4.identity()
                  ..scale(1.0, _backScale.value, 1.0);
                return new Transform(
                  transform: transform,
                  alignment: FractionalOffset.center,
                  child: child,
                );
              },
            ),
            new AnimatedBuilder(
                child: new MyCustomCard(
                  colors: Colors.orange,
                ),
                animation: _frontScale,
                builder: (BuildContext context, Widget child) {
                  final Matrix4 transform = new Matrix4.identity()
                    ..scale(1.0, _frontScale.value, 1.0);
                  return new Transform(
                    transform: transform,
                    alignment: FractionalOffset.center,
                    child: child,
                  );
                })
          ],
        ),
      ),
    );
  }
}

class MyCustomCard extends StatelessWidget {
  MyCustomCard({this.colors});

  final MaterialColor colors;

  Widget build(BuildContext context) {
    return new Container(
      alignment: FractionalOffset.center,
      height: 144.0,
      width: 360.0,
      decoration: new BoxDecoration(
        color: colors,
        border: new Border.all(color: new Color(0xFF9E9E9E)),
      ),
      child: new FlutterLogo(size: 100),
    );
  }
}

class _BottomSheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: <Widget>[
          Container(
            height: 70,
            child: Center(
              child: Text(
                "BottomSheet",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Title"),
                  );
                }),
          )
        ],
      ),
    );
  }
}

/*class BottomSheetPage extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
      _BottomSheetShowState();
    }
  }

  class _BottomSheetShowState extends State<BottomSheetPage> {
    @override
    Widget build(BuildContext context) {
      @override
      void initState() {
        super.initState();
        _showBottomSheetCallBack = _showBottomSheet;
      }

      void _showBottomSheet() {
        setState(() {
          _showBottomSheetCallBack = null;
        });

        Scaffold.of(context).showBottomSheet<void>((context) {
          return _BottomSheetContent();
        }, elevation: 25)
            .close
            .whenComplete(() {
          if (mounted) {
            setState(() {
              _showBottomSheetCallBack = _showBottomSheet;
            });
          }
        });
      }
      @override
      Widget build(BuildContext context) {
        return Center(
          child: RaisedButton(
            onPressed: () {},
            child: Text("Press"),
          ),
        );
      }
    }
  }*/

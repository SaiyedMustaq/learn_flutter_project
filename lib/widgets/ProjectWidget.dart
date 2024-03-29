import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/Project.dart';

class ProjectWidget extends StatelessWidget {
  final Project _project;
  final double _bottomPadding;


  ProjectWidget(this._project, this._bottomPadding);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, _bottomPadding),
      child: InkWell(
        onTap: onProjectClick,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                  flex: 40,
                  child: Image.asset(
                    _project.image,
                    width: width * .25,
                    height: width * .25,
                  )),
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(_project.name,
                          style: Theme.of(context).textTheme.headline5),
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        _project.language,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  void onProjectClick() async{

    if (await canLaunch(_project.projectUrl)) {
      await launch(_project.projectUrl);
    } else {
      throw 'Could not launch ${_project.projectUrl}';
    }
    /*if(_project.projectUrl!=null)*/

  }
}

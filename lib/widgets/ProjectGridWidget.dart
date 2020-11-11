import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/Project.dart';

class ProjectGridWidget extends StatelessWidget {
  final Project project;
  final double bottomPadding;

  ProjectGridWidget(this.project, this.bottomPadding);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 0.5,
        color: Colors.white,
        shadowColor: Colors.grey,
        borderOnForeground: true,
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, bottomPadding),
        child: InkWell(
          onTap: onProjectClick,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 70,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    project.image,
                    height: height * .30,
                    width: width * .30,
                  ),
                ),
              ),
              Expanded(
                flex: 50,
                child: Container(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(project.name,
                            textScaleFactor: 0.7,
                            style: TextStyle(fontSize: 20,color: Colors.black54)),
                      ),
                      Center(
                        child: Text(
                          project.language,
                          textScaleFactor:1.2,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  void onProjectClick() async {
    if (await canLaunch(project.projectUrl)) {
      await launch(project.projectUrl);
    } else {
      throw 'Could not launch ${project.projectUrl}';
    }
    /*if(_project.projectUrl!=null)*/
  }
}

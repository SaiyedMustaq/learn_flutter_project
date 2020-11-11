import 'package:flutter/material.dart';

import '../model/Project.dart';
import 'ProjectGridWidget.dart';
import 'ResponsiveWidget.dart';

class ProjectsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: GridView.count(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
          crossAxisCount: 3,
          childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.3),
          children: List.generate(projectsList.length, (index) => ProjectGridWidget(projectsList[index], 0)),
        ),
        smallScreen: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.3),
          children: List.generate(
              projectsList.length,
              (index) => ProjectGridWidget(
                  projectsList[index], (index == projectsList.length - 1 ? 16.0 : 0))),
        ));
  }
}

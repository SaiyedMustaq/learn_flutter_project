import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../dataclass/Artical.dart';

class ArticleWidget extends StatelessWidget {

  final Article article;


  ArticleWidget(this.article);



  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: ExpandablePanel(
        header: Padding(padding: EdgeInsets.all(10), child: Text(article.title)),
        collapsed: Text(
          "",
          softWrap: true,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        expanded: Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
            article.body,
            softWrap: true,
          ),
        )
      ),
    );
  }
}

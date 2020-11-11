import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Article {
  String title;
  String body;
  Article({
    @required this.title,
    @required this.body
  });
}

final List<Article> articleList = [
  Article(title: "One",body: "This is body")
  /*Article(bo"one", "One Body"),
  Article("two", "Two Body"),
  Article("three", "Three Body"),
  Article("four", "Four Body"),
  Article("five", "Five Body")*/
];

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Project {
  String name;
  String language;
  String image;
  String projectUrl;

  Project(
      {@required this.name,
      @required this.language,
      @required this.image,
      @required this.projectUrl});
}

final List<Project> projectsList = [
  Project(
      name: "Hopmeal",
      language: "Kotlin",
      image: "assets/ic_hopmeal.png",
      projectUrl:
          "https://play.google.com/store/apps/details?id=com.hopmeal.android&hl=en_IN"),
  Project(
      name: "HopGrocery",
      language: "Kotlin",
      image: "assets/ic_grocery.png",
      projectUrl:
          "https://play.google.com/store/apps/details?id=com.hopgrocery.attuneinfocom&hl=en_IN"),
  Project(
      name: "Mani Couture",
      language: "Kotlin",
      image: "assets/ic_mani_couture.png",
      projectUrl: ""),
  Project(
      name: "Zamy",
      language: "Kotlin",
      image: "assets/ic_owaner.png",
      projectUrl:
          "https://play.google.com/store/apps/details?id=com.attune.zamy&hl=en_IN"),
  Project(
      name: "Zamy Business Partner",
      language: "Kotlin",
      image: "assets/ic_owaner.png",
      projectUrl:
          "https://play.google.com/store/apps/details?id=com.attune.zamyowner&hl=en_IN"),
  Project(
      name: "Zamy Delivery Partner",
      language: "Kotlin",
      image: "assets/ic_owaner.png",
      projectUrl:
          "https://play.google.com/store/apps/details?id=com.attune.zamydelivery&hl=en_IN")
];

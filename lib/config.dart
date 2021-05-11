import 'dart:ffi';

import 'package:flutter/material.dart';

Color pdc = Color(0xff416d6d);
Color pc = Color(0xfff5f4eb);
// Color pdc = Color(0xff646B73);
Color dc = Color(0xffe75858);

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.black87, blurRadius: 30, offset: Offset(0, 10))
];

final Map data = {
  "event_titles": [
    "Adobe XD Scratchclass - Introduction",
    "Latest Innovation and Trends in Flutter",
    "Discuss with DSC - Blockchain and Pi cryptocurrency",
    "Discuss with DSC - Data Engineering with Spark using Databricks",
    "Free Practical Cloud course",
    "DeveLup Series - Machine Learning Novice to Jarvis",
    "DeveLup Series - Problem Solving with Design Thinking",
    "DeveLup Series - Touring google Cloud",
    "DeveLup Series - Unboxing Mixed Reality",
    "DeveLup Series - Flutter Zero to Hero",
    "DeveLup Series - Kickstart with Firebase",
    "DeveLup Series - Graphic Designing - Intermediate",
    "DeveLup Series - Introduction to JavaScript",
    "DeveLup Series - Getting started with LaTeX",
    "DeveLup Series Launch"
  ]
};

Widget sph = SizedBox(
  height: 20,
);
Widget spw = SizedBox(
  width: 20,
);

double sh(context) => MediaQuery.of(context).size.height;
double sw(context) => MediaQuery.of(context).size.width;

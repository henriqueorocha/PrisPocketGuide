import 'package:flutter/material.dart';

class Person {
  String name;
  String area;
  String mainCircle;
  String startedAt;
  String picture;
  List<String> characteristicsAtWork;
  List<String> funFacts;

  Person(
      {@required this.name,
      @required this.area,
      @required this.mainCircle,
      @required this.startedAt,
      @required this.picture,
      @required this.characteristicsAtWork,
      @required this.funFacts});
}

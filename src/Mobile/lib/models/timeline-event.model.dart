import 'package:flutter/foundation.dart';

class TimelineEvent {
  int id;
  DateTime date;
  String description;

  TimelineEvent(
      {@required this.id, @required this.date, @required this.description});
}

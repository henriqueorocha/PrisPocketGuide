import 'package:flutter/foundation.dart';

class TimelineEvent {
  DateTime occurredAt;
  String description;

  TimelineEvent({@required this.occurredAt, @required this.description});

  TimelineEvent.fromJson(Map<String, dynamic> json) {
    occurredAt = DateTime.parse(json['occurredAt']);
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['occurredAt'] = this.occurredAt;
    data['description'] = this.description;
    return data;
  }
}

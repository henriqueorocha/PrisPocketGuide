import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/models/timeline-event.model.dart';
import 'package:pris_pocket_guide/widgets/timeline-endchild.widget.dart';
import 'package:pris_pocket_guide/widgets/timeline-startchild.widget.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'loader.widget.dart';

class Timeline extends StatelessWidget {
  final List<TimelineEvent> events;

  Timeline({@required this.events});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Loader(object: events, callback: timeline),
    );
  }

  Widget timeline() {
    return Container(
      child: ListView.builder(
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          return TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.3,
            isFirst: index == 0,
            isLast: index == events.length - 1,
            endChild: TimelineEndChild(description: events[index].description),
            startChild: TimelineStartChild(date: events[index].occurredAt),
          );
        },
      ),
    );
  }
}

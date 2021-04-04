import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/models/timeline-event.model.dart';
import 'package:pris_pocket_guide/widgets/timeline-endchild.widget.dart';
import 'package:pris_pocket_guide/widgets/timeline-startchild.widget.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelinePage extends StatelessWidget {
  final List<TimelineEvent> events = [
    new TimelineEvent(
        id: 1,
        date: new DateTime(2008, 4, 1),
        description: "A Pris é fundada por Daniel Elói e Leonardo Santiago"),
    new TimelineEvent(
        id: 2,
        date: new DateTime(2012, 12, 1),
        description: "Lançamento do Options Report"),
    new TimelineEvent(
        id: 3,
        date: new DateTime(2014, 6, 1),
        description: "Lançamento do PrisIP")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Linha do Tempo"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (BuildContext context, int index) {
            return TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.3,
              isFirst: index == 0,
              isLast: index == events.length - 1,
              endChild:
                  TimelineEndChild(description: events[index].description),
              startChild: TimelineStartChild(date: events[index].date),
            );
          },
        ),
      ),
    );
  }
}

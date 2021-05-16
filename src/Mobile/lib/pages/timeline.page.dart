import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/blocs/timeline.bloc.dart';
import 'package:pris_pocket_guide/widgets/timeline.widget.dart';
import 'package:provider/provider.dart';

class TimelinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TimelineEventBloc bloc = Provider.of<TimelineEventBloc>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Linha do Tempo"),
      ),
      body: Timeline(events: bloc.timelineEvents),
    );
  }
}

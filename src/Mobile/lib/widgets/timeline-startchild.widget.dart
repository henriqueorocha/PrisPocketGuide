import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class TimelineStartChild extends StatelessWidget {
  final DateTime date;

  TimelineStartChild({@required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(new DateFormat("MM/yyyy").format(date)),
    );
  }
}

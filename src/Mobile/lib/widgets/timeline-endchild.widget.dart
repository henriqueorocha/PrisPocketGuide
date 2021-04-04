import 'package:flutter/widgets.dart';

class TimelineEndChild extends StatelessWidget {
  final String description;

  TimelineEndChild({@required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 80,
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(10),
      child: Text(description),
    );
  }
}

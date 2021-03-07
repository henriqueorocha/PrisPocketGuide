import 'package:flutter/widgets.dart';

class BulletedTextItem extends StatelessWidget {
  final String content;
  BulletedTextItem({this.content});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 15),
        Text("\u2022 $content"),
      ],
    );
  }
}

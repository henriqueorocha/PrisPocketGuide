import 'package:flutter/widgets.dart';
import 'package:pris_pocket_guide/widgets/bulleted-text-item.dart';

class BulletedTextList extends StatelessWidget {
  final String title;
  final List<String> content;
  BulletedTextList({this.title, this.content});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: (content != null && content.length > 0)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List<BulletedTextItem>.generate(content.length,
                        (int i) {
                      return BulletedTextItem(content: content[i]);
                    }),
                  ),
                ],
              )
            : null);
  }
}

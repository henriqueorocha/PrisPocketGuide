import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/models/value.model.dart';
import 'package:pris_pocket_guide/widgets/value-dialog.widget.dart';

class ValueGridItem extends StatelessWidget {
  final Value value;

  ValueGridItem({@required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.blueGrey[400],
      child: TextButton(
        child: Text(
          value.name,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => ValueDiaglog(
              value: value,
            ),
          );
        },
      ),
    );
  }
}

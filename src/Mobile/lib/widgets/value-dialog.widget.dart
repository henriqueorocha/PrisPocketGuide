import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/models/value.model.dart';

class ValueDiaglog extends StatelessWidget {
  final Value value;

  ValueDiaglog({@required this.value});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(value.name),
      content: SingleChildScrollView(
        child: Text(value.description),
      ),
    );
  }
}

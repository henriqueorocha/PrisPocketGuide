import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/models/value.model.dart';
import 'package:pris_pocket_guide/widgets/values-grid-item.widget.dart';
import 'loader.widget.dart';

class ValuesGrid extends StatelessWidget {
  final List<Value> values;

  ValuesGrid({@required this.values});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Loader(object: values, callback: grid),
    );
  }

  Widget grid() {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      children: List<ValueGridItem>.generate(values.length, (int i) {
        return ValueGridItem(value: values[i]);
      }),
    );
  }
}

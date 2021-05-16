import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/blocs/values.bloc.dart';
import 'package:pris_pocket_guide/widgets/values-grid.widget.dart';
import 'package:provider/provider.dart';

class ValuesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ValuesBloc bloc = Provider.of<ValuesBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Valores"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ValuesGrid(values: bloc.values),
      ),
    );
  }
}

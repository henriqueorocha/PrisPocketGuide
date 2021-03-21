import 'package:flutter/material.dart';
import 'package:pris_pocket_guide/blocs/people.bloc.dart';
import 'package:pris_pocket_guide/widgets/people-grid.widget.dart';
import 'package:pris_pocket_guide/widgets/search-box.widget.dart';
import 'package:provider/provider.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PeopleBloc bloc = Provider.of<PeopleBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Pessoas"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: <Widget>[
            SearchBoxWidget(),
            SizedBox(height: 20),
            Flexible(child: PeopleGrid(people: bloc.people)),
          ],
        ),
      ),
    );
  }
}

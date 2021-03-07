import 'package:flutter/widgets.dart';
import 'package:pris_pocket_guide/blocs/people.bloc.dart';
import 'package:pris_pocket_guide/widgets/person-card.widget.dart';

class PeopleGrid extends StatelessWidget {
  final PeopleBloc bloc;

  PeopleGrid({this.bloc});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
      ),
      children: List<PersonCard>.generate(bloc.people.length, (int i) {
        return PersonCard(person: bloc.people[i]);
      }),
    );
  }
}

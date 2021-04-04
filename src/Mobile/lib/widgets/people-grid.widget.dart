import 'package:flutter/widgets.dart';
import 'package:pris_pocket_guide/models/person.model.dart';
import 'package:pris_pocket_guide/widgets/person-card.widget.dart';

import 'loader.widget.dart';

class PeopleGrid extends StatelessWidget {
  final List<Person> people;

  PeopleGrid({@required this.people});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Loader(object: people, callback: grid),
    );
  }

  Widget grid() {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.71,
      ),
      children: List<PersonCard>.generate(people.length, (int i) {
        return PersonCard(person: people[i]);
      }),
    );
  }
}

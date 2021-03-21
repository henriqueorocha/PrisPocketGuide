import 'package:flutter/widgets.dart';
import 'package:pris_pocket_guide/models/person.model.dart';
import 'package:pris_pocket_guide/services/people.service.dart';

class PeopleBloc extends ChangeNotifier {
  final peopleService = new PeopleService();
  List<Person> _people;
  List<Person> people;

  PeopleBloc() {
    getPeople();
  }

  getPeople() {
    peopleService.getAll().then((data) {
      this._people = data;
      this.people = data;
      notifyListeners();
    });
  }

  filterPeople(String filterValue) {
    people = _people
        .where(
            (p) => p.name.toLowerCase().startsWith(filterValue.toLowerCase()))
        .toList();
    notifyListeners();
  }
}

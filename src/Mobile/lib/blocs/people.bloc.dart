import 'package:flutter/widgets.dart';
import 'package:pris_pocket_guide/models/person.model.dart';
import 'package:pris_pocket_guide/services/people.service.dart';

class PeopleBloc extends ChangeNotifier {
  final peopleService = new PeopleService();
  List<Person> people;

  PeopleBloc() {
    getPeople();
  }

  getPeople() {
    peopleService.getAll().then((data) {
      this.people = data;
      notifyListeners();
    });
  }
}

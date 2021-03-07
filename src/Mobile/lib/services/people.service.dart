import 'package:dio/dio.dart';
import 'package:pris_pocket_guide/models/person.model.dart';

class PeopleService {
  static const String baseUrl =
      'https://prispocketguide.azurewebsites.net/people';

  Future<List<Person>> getAll() async {
    Response response = await Dio().get(baseUrl);
    return (response.data as List)
        .map((course) => Person.fromJson(course))
        .toList();
  }
}

import 'package:dio/dio.dart';
import 'package:pris_pocket_guide/models/timeline-event.model.dart';
import 'package:pris_pocket_guide/models/value.model.dart';

class CompanyService {
  static const String baseUrl =
      'https://prispocketguidecompany.azurewebsites.net/';

  Future<List<Value>> getValues() async {
    var url = "$baseUrl/values";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((course) => Value.fromJson(course))
        .toList();
  }

  Future<List<TimelineEvent>> getTimelineEvents() async {
    var url = "$baseUrl/timeline-events";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((course) => TimelineEvent.fromJson(course))
        .toList();
  }
}

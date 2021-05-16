import 'package:flutter/widgets.dart';
import 'package:pris_pocket_guide/models/timeline-event.model.dart';
import 'package:pris_pocket_guide/services/company.service.dart';

class TimelineEventBloc extends ChangeNotifier {
  final companyService = new CompanyService();
  List<TimelineEvent> timelineEvents;

  TimelineEventBloc() {
    getTimelineEvents();
  }

  getTimelineEvents() {
    companyService.getTimelineEvents().then((data) {
      this.timelineEvents = data;
      notifyListeners();
    });
  }
}

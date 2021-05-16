import 'package:flutter/widgets.dart';
import 'package:pris_pocket_guide/models/value.model.dart';
import 'package:pris_pocket_guide/services/company.service.dart';

class ValuesBloc extends ChangeNotifier {
  final companyService = new CompanyService();
  List<Value> values;

  ValuesBloc() {
    getValues();
  }

  getValues() {
    companyService.getValues().then((data) {
      this.values = data;
      notifyListeners();
    });
  }
}

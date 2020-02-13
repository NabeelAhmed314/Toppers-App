import 'package:toppers_pakistan/models/carosel_model.dart';
import 'package:toppers_pakistan/services/_services.dart';

class CaroselService extends Service<CaroselModel> {
  @override
  CaroselModel parse(Map<String, dynamic> json) {
    return CaroselModel.fromJson(json);
  }

  String get route => "carosel";
}

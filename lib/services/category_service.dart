import 'package:toppers_pakistan/models/category_model.dart';
import 'package:toppers_pakistan/services/_services.dart';

class CategoryService extends Service<CategoryModel> {
  @override
  CategoryModel parse(Map<String, dynamic> json) {
    return CategoryModel.fromJson(json);
  }

  String get route => "category";
}

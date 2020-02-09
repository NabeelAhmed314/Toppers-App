import 'package:toppers_pakistan/models/product_model.dart';
import 'package:toppers_pakistan/services/_services.dart';

class ProductService extends Service<ProductModel> {
  @override
  ProductModel parse(Map<String, dynamic> json) {
    return ProductModel.fromJson(json);
  }

  String get route => "product";
}

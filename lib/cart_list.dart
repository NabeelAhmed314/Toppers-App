import 'package:toppers_pakistan/models/address_model.dart';
import 'package:toppers_pakistan/models/order-item_model.dart';

class CartList {
  static List<OrderItemModel> orderItems = new  List();
  static AddressModel address;
  static String instruction;
  static int totalPrice;
}
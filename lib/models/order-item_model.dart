import '_model.dart';

class OrderItemModel extends Model {
  String orderId;
  String productId;
  int quantity;

  OrderItemModel(
      {int id, this.orderId, this.productId, this.quantity})
      : super(id: id);

  OrderItemModel.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            orderId: json['order_id'].toString(),
            productId: json['product_id'].toString(),
            quantity: json['quantity']);

  @override
  Map<String, dynamic> toJson() => {
        'order_id': orderId,
        'product_id': productId,
        'quantity': quantity
      };
}

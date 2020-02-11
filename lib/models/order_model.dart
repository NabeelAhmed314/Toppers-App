import '_model.dart';

class OrderModel extends Model {
  final String name;
  final String customerId;
  final String address;
  final int totatlPrice;

  OrderModel(
      {int id, this.name, this.customerId, this.address, this.totatlPrice})
      : super(id: id);

  OrderModel.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'],
            name: json['name'],
            customerId: json['customer_id'].toString(),
            address: json['address'].toString(),
            totatlPrice: json['total_price']);

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'customer_id': customerId,
        'address': address,
        'total_price': totatlPrice
      };
}

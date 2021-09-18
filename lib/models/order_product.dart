// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);
import 'package:hive/hive.dart';
import 'package:sq_cafe_user_app/models/product.dart';
@HiveType(typeId: 1)
class OrderProduct extends HiveObject{
  @HiveField(0)
  String deliveryInstruction;
  @HiveField(1)
  String dateTime;
  @HiveField(2)
  String orderId;
  @HiveField(3)
  List<Product> cartItems=[];

  OrderProduct(
      this.deliveryInstruction, this.dateTime, this.orderId, this.cartItems);
}



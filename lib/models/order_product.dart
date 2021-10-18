// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);
import 'package:sq_cafe_user_app/models/product.dart';
class OrderProduct {
  String deliveryInstruction;
  String dateTime;
  String orderId;
  List<Product> cartItems=[];

  OrderProduct(
      this.deliveryInstruction, this.dateTime, this.orderId, this.cartItems);
}



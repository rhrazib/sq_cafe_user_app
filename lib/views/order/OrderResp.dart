// To parse this JSON data, do
//
//     final loginResp = loginRespFromJson(jsonString);

import 'dart:convert';

OrderResp orderRespFromJson(String str) => OrderResp.fromJson(json.decode(str));

String orderRespToJson(OrderResp data) => json.encode(data.toJson());

class OrderResp {
  OrderResp({this.orderId, this.deliveryInstruction,this.totalPrice,this.paymentMethod});

  int orderId;
  //bool isSuccess;
  String deliveryInstruction;
  double totalPrice;
  String paymentMethod;

  factory OrderResp.fromJson(Map<String, dynamic> json) =>
      OrderResp(orderId: json["orderId"], deliveryInstruction: json["deliveryInstruction"],totalPrice: json["totalPrice"],paymentMethod: json["paymentMethod"],);

  Map<String, dynamic> toJson() => {"orderId": orderId, "deliveryInstruction": deliveryInstruction,"totalPrice": totalPrice, "paymentMethod": paymentMethod,};
}

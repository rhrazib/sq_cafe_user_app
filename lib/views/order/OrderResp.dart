// To parse this JSON data, do
//
//     final loginResp = loginRespFromJson(jsonString);

import 'dart:convert';

OrderResp orderRespFromJson(String str) => OrderResp.fromJson(json.decode(str));

String orderRespToJson(OrderResp data) => json.encode(data.toJson());

class OrderResp {
  OrderResp({
    this.orderId,
    this.isSuccess
  });
  int orderId;
 bool isSuccess;


  factory OrderResp.fromJson(Map<String, dynamic> json) => OrderResp(
    orderId: json["orderId"],
      isSuccess: json["isSuccess"]);

  Map<String, dynamic> toJson() => {
    "orderId": orderId,
    "isSuccess": isSuccess
  };
}

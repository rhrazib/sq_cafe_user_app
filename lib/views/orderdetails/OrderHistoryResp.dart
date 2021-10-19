// To parse this JSON data, do
//
//     final loginResp = loginRespFromJson(jsonString);

import 'dart:convert';

List<OrderHistoryResp> orderHistoryFromJson(String str) =>
    List<OrderHistoryResp>.from(
        json.decode(str).map((x) => OrderHistoryResp.fromJson(x)));

String orderRespToJson(List<OrderHistoryResp> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderHistoryResp {
  OrderHistoryResp(
      {this.orderId,
      this.deliveryInstruction,
      this.totalPrice,
      this.paymentMethod,
      this.createDate,
      this.createTime,
      this.orderStatus,
      this.productOrders});

  int orderId;

  //bool isSuccess;
  String deliveryInstruction;
  double totalPrice;
  String paymentMethod;
  int UserId;
  String createDate;
  String orderStatus;
  String createTime;
  List<ProductOrders> productOrders;

  factory OrderHistoryResp.fromJson(Map<String, dynamic> json) =>
      OrderHistoryResp(
          orderId: json["orderId"],
          deliveryInstruction: json["deliveryInstruction"],
          totalPrice: json["totalPrice"],
          paymentMethod: json["paymentMethod"],
          createDate: json["createDate"],
          createTime: json["createTime"],
          orderStatus: json["orderStatus"],
          productOrders: List<ProductOrders>.from(
              json["productOrders"].map((x) => ProductOrders.fromJson(x))));

  Map<String, dynamic> toJson() => {
        "orderId": orderId,
        "deliveryInstruction": deliveryInstruction,
        "totalPrice": totalPrice,
        "paymentMethod": paymentMethod,
        "createDate": createDate,
        "createTime": createTime,
        "orderStatus": orderStatus,
        "productOrders": productOrders
      };
}

class ProductOrders {
  ProductOrders({
    this.orderId,
    this.totalPrice,
    this.quantity,
    this.createDate,
    this.name,
    //  this.deliveryInstruction,
  });

  // int productOrderId;
  double totalPrice;
  int quantity;
  int orderId;
  String createDate;
  String name;

  // String deliveryInstruction;

  factory ProductOrders.fromJson(Map<String, dynamic> json) => ProductOrders(
        orderId: json["orderId"],
        totalPrice: json["totalPrice"] == null ? null : json["totalPrice"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        createDate: json["createDate"] == null ? null : json["createDate"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "orderId": orderId,
        "totalPrice": totalPrice == null ? null : totalPrice,
        "quantity": quantity == null ? null : quantity,
        "createDate": createDate == null ? null : createDate,
        "name": name == null ? null : name,
      };
}

//[{"orderId":25,"userId":2,"deliveryInstruction":"Test room 5","totalPrice":180.00,"paymentMethod":"Official","createDate":"2021-10-17T00:00:00","updateDate":"0001-01-01T00:00:00","productOrdersJson":null,"productOrders":[{"productOrderId":12,"productId":1,"orderId":25,"totalPrice":0.00,"product_add_ons_1_Id":0,"product_add_ons_2_Id":0,"sepcialInstruction":null,"quantity":0,"createDate":"2021-10-17T00:00:00","updateDate":"0001-01-01T00:00:00"},{"productOrderId":13,"productId":2,"orderId":25,"totalPrice":0.00,"product_add_ons_1_Id":0,"product_add_ons_2_Id":0,"sepcialInstruction":null,"quantity":0,"createDate":"2021-10-17T00:00:00","updateDate":"0001-01-01T00:00:00"}]}]

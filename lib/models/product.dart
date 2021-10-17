// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@HiveType(typeId: 2)
class Product {
  Product(
      {this.id,
      this.brand,
      this.name,
      this.price,
      this.priceSign,
      this.currency,
      this.imageLink,
      this.productLink,
      this.websiteLink,
      this.description,
      this.rating,
      this.category,
      this.productType,
      this.tagList,
      this.createdAt,
      this.updatedAt,
      this.productApiUrl,
      this.apiFeaturedImage,
      this.productColors,
      this.count,
      this.totalproductPrice,
      this.instruction,
      this.suger});

  @HiveField(0)
  int id;
  @HiveField(1)
  String brand;
  @HiveField(2)
  String name;
  @HiveField(3)
  double price;
  @HiveField(4)
  dynamic priceSign;
  @HiveField(5)
  dynamic currency;
  @HiveField(6)
  String imageLink;
  @HiveField(7)
  String productLink;
  @HiveField(8)
  String websiteLink;
  @HiveField(9)
  String description;
  @HiveField(10)
  double rating;
  @HiveField(11)
  String category;
  @HiveField(12)
  String productType;
  @HiveField(13)
  List<dynamic> tagList;
  @HiveField(14)
  DateTime createdAt;
  @HiveField(15)
  DateTime updatedAt;
  @HiveField(16)
  String productApiUrl;
  @HiveField(17)
  String apiFeaturedImage;
  @HiveField(18)
  List<ProductColor> productColors;
  @HiveField(19)
  int suger;
  @HiveField(20)
  int count = 0;
  @HiveField(21)
  double totalproductPrice = 0.0;
  @HiveField(22)
  var isFavorite = false.obs;

  List<ProductColor> productaddOns2;
  String instruction;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      id: json["productId"],
      brand: json["brand"],
      name: json["name"],
      price: json["price"] == null ? null : json["price"],
      imageLink: json["image"] == null ? null : json["image"],
      description: json["description"],
      // category: json["category"] == null ? null : json["category"],
      productType: json["productType"],
      productColors: List<ProductColor>.from(
          json["productAddons1"].map((x) => ProductColor.fromJson(x))),
      count: json["quantity"],
      totalproductPrice: json["totalPrice"],
      instruction: json["sepcialInstruction"],
      suger: json["product_add_ons_1_Id"]
      // productaddOns2:List<ProductColor>.from(
      //     json["productAddons1"].map((x) => ProductColor.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "productId": id,
        "brand": brand,
        "name": name,
        "price": price,
        "image": imageLink,
        "description": description,
        "productType": productType,
        "productAddons1":
            List<dynamic>.from(productColors.map((x) => x.toJson())),
        "quantity": count,
        "totalPrice": totalproductPrice,
        "sepcialInstruction": instruction,
        "product_add_ons_1_Id": suger
        // "productAddons2":
        // List<dynamic>.from(productaddOns2.map((x) => x.toJson())),
      };
}

enum Brand { MAYBELLINE }

final brandValues = EnumValues({"maybelline": Brand.MAYBELLINE});

class ProductColor {
  ProductColor({
    this.product_add_ons_1_Id,
    this.name,
  });

  int product_add_ons_1_Id;
  String name;

  factory ProductColor.fromJson(Map<String, dynamic> json) => ProductColor(
        product_add_ons_1_Id: json["product_add_ons_1_Id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "product_add_ons_1_Id": product_add_ons_1_Id,
        "name": name == null ? null : name,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

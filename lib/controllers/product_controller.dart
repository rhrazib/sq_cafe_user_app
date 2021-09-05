import 'package:get/state_manager.dart';
import 'package:sq_cafe_user_app/models/product.dart';
import 'package:sq_cafe_user_app/services/remote_services.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'dart:convert';


class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>().obs;

  @override
  void onInit() {
   // fetchProducts();
    ReadJsonData();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }

  // //parse local json
  Future<List<Product>> ReadJsonData() async {
    try {
      isLoading(true);
    final jsondata = await rootBundle.rootBundle.loadString('assets/country.json');
    var products = productFromJson(jsondata);
    if (products != null) {
      productList.value = products;
    }
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => Product.fromJson(e)).toList();
    } finally {
      isLoading(false);
    }
  }
}

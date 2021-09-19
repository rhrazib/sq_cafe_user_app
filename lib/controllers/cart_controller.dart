import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:sq_cafe_user_app/models/product.dart';

class CartController extends GetxController {
  var cartItems = List<Product>().obs;
  var checkOutCartItems = List<Product>().obs;

  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + double.parse(item.price));



   //todo total price
  double get totalAllPrice => cartItems.fold(0, (sum, item) => sum + item.totalproductPrice);

  addToCart(Product product) {
    cartItems.add(product);
  }
  void removeFromCart(Product product) {
    cartItems.remove(product);
    //notifyListeners();
}
  var countItem = 0.obs;

  increment() => countItem++;
  decrement() => countItem--;

@override
  void onClose() {
    // TODO: implement onClose
  cartItems.clear();
    super.onClose();
  }
  final deliveryInstruction = TextEditingController();
  String singleValue = "Personal";
String orderId;
// cartController.cartItems.forEach((element) {
//   if (element.name == product.name) {
//     isExist=true;
//     var pro = double.parse(element.price)+double.parse(product.price);
//     element.price=pro.toString();
//     product.count=product.count+1;
//     //cartController.removeFromCart(product);
//    // if(product.count.)
//     cartController.addToCart(element);
//   }
// });
// if(!isExist)
//  cartController.addToCart(product);
}

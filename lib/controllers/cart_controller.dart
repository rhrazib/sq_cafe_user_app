import 'package:get/state_manager.dart';
import 'package:sq_cafe_user_app/models/product.dart';

class CartController extends GetxController {
  var cartItems = List<Product>().obs;
  var checkOutCartItems = List<Product>().obs;

  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + double.parse(item.price));

  addToCart(Product product) {
    cartItems.add(product);
  }
  void removeFromCart(Product product) {
    cartItems.remove(product);
    //notifyListeners();
}
}

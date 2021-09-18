import 'package:get/state_manager.dart';
import 'package:hive/hive.dart';
import 'package:sq_cafe_user_app/models/order_product.dart';
import 'package:sq_cafe_user_app/models/product.dart';

class OrderController extends GetxController {
  //var orderItems = List<OrderProduct>().obs;
//  var orderAll = List<Product>().obs;
  //static var orderItems = new List();


 List<OrderProduct> _orderItems;
List<OrderProduct>  get orderItems=>_orderItems;
OrderController(){
  _orderItems=[];
}
addOrderHistory(OrderProduct orderProduct){
  _orderItems.add(orderProduct);
}
deleteOrderHistory(String id){
  _orderItems.removeWhere((element) => element.orderId==id);
  update();
}
// final Box<OrderProduct> noteBox = Hive.box('notes');

}

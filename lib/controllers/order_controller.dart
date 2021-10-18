import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:sq_cafe_user_app/models/order_product.dart';
import 'package:sq_cafe_user_app/models/product.dart';
import 'package:sq_cafe_user_app/services/remote_services.dart';
import 'package:sq_cafe_user_app/views/order/OrderResp.dart';
import 'package:sq_cafe_user_app/views/order/OrderScreen.dart';
import 'package:sq_cafe_user_app/views/orderdetails/constant.dart';

class OrderController extends GetxController {
  //var orderItems = List<OrderProduct>().obs;
//  var orderAll = List<Product>().obs;
  //static var orderItems = new List();
  var orderRes = OrderResp();
  var isLoading = true.obs;


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



  Future<String> orderProduct({int userId, String deliveryInstruction,String totalPrice,    String paymentMethod, BuildContext context, List<Product> cartItems}) async {
    try {
      isLoading(true);
      // loginProcess(true);
      var orderResp = await RemoteServices.productOrder(userId: userId, deliveryInstruction: deliveryInstruction,totalPrice: totalPrice,paymentMethod: paymentMethod,cartItems:cartItems);
      if (orderResp !=null) {
        orderRes=orderResp;
        if(orderRes.orderId>0){
          showToast("Order Submitted Successfully",context: context);
          Constant.singleValue=orderRes.paymentMethod.toString();
          Constant.orderID=orderRes.orderId.toString();
          Constant.deliveryLoc=orderRes.deliveryInstruction.toString();
          Constant.totalPrice=orderRes.totalPrice.toString();
          Get.to(OrderScreen());
        }else{
          showToast("Invalid email or password, try again",context: context);
        }
      } else {
        showToast("Some error occured, try again",context: context);
      }
    } finally {
      // loginProcess(false);
      isLoading(false);

    }
  }

}

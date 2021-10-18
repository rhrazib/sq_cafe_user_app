import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:sq_cafe_user_app/services/remote_services.dart';
import 'package:sq_cafe_user_app/views/orderdetails/OrderDetailsScreen.dart';
import 'package:sq_cafe_user_app/views/orderdetails/OrderHistoryResp.dart';
import 'package:sq_cafe_user_app/views/orderdetails/constant.dart';

class OrderHistoryController extends GetxController {
  var orderRes = List<OrderHistoryResp>().obs;
  var isLoading = true.obs;

//  List<OrderProduct> _orderItems;
// List<OrderProduct>  get orderItems=>_orderItems;
//   OrderHistoryController(){
//   _orderItems=[];
// }

  Future<String> orderHistory({BuildContext context}) async {
    try {
      isLoading(true);
      // loginProcess(true);
      var orderResp =
          await RemoteServices.orderHistory(userId: Constant.userID);
      if (orderResp != null) {
        orderRes.value = orderResp;
        if (orderRes.length > 0) {
          //  showToast("Successfully", context: context);
          Get.to(OrderDetailsScreen());
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => OrderDetailsScreen(),
          //   ),
          // );
        } else {
          showToast("No history found", context: context);
        }
      } else {
        showToast("Some error occured, try again", context: context);
      }
    } finally {
      isLoading(false);
    }
  }
}

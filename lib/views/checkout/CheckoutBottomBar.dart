import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/views/component/DefaultButton.dart';
import 'package:sq_cafe_user_app/views/order/OrderScreen.dart';

class CheckoutBottomBar extends StatelessWidget {
  const CheckoutBottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Total",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                Spacer(),
                Text("Tk "+cartController.totalPrice.toString().substring(0,6),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

              ],
            ),
            SizedBox(height: 20),
            DefaultButton(
              text: "Place Order",
              press: () {
                Get.to(OrderScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
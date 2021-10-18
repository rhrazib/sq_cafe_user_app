import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/controllers/order_controller.dart';
import 'package:sq_cafe_user_app/models/dbtest/todo_adapter.dart';
import 'package:sq_cafe_user_app/models/order_product.dart';
import 'package:sq_cafe_user_app/models/product.dart';
import 'package:sq_cafe_user_app/views/component/DefaultButton.dart';
import 'package:sq_cafe_user_app/views/order/OrderScreen.dart';
import 'package:intl/intl.dart';
import 'package:sq_cafe_user_app/views/orderdetails/constant.dart';

class CheckoutBottomBar extends StatefulWidget {
  //const CheckoutBottomBar({Key key}) : super(key: key);
  final formkey = GlobalKey<FormState>();

  @override
  _CheckoutBottomBarState createState() => _CheckoutBottomBarState();
}

class _CheckoutBottomBarState extends State<CheckoutBottomBar> {
  Box<Todo> todoBox;

  //int randomNumber;
  final cartController = Get.put(CartController());

  @override
  void initState() {
    todoBox = Hive.box<Todo>('todos');

    var rng = new Random();
    cartController.orderId = "#SQ188" + (rng.nextInt(100)).toString();
    super.initState();
  }

  // @override
  // void dispose() {
  //  // Hive.box('todos').compact();
  //   Hive.close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    final orderController = Get.put(OrderController());
    // Box<OrderProduct> noteBox = Hive.box('notes');

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
                Text(
                  "Total",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "Tk " + cartController.totalAllPrice.toString(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            DefaultButton(
              text: "Place Order",
              press: () async {
                final DateTime now = DateTime.now();
                final DateFormat format = DateFormat('yyyy-MM-dd');
                final String formatted = format.format(now);
                //  orderController.orderItems.add(new OrderProduct(dateTime:formatted,cartItems: cartController.cartItems,deliveryInstruction: cartController.totalAllPrice.toString()));
                //OrderController.orderItems.add(new OrderProduct(dateTime:formatted,cartItems: cartController.cartItems,deliveryInstruction: cartController.totalAllPrice.toString()));
                var cartItems = List<Product>().obs;

                cartItems.addAll(cartController
                    .cartItems.value);



                //=cartController.cartItems.value;
                //   orderController.addOrderHistory(new OrderProduct(dateTime:formatted,cartItems: cartItems,deliveryInstruction: cartController.totalAllPrice.toString()));

                // Box<OrderProduct> todoBox = Hive.box<OrderProduct>('todos');
                // todoBox.add(OrderProduct(cartController.totalAllPrice.toString(),formatted,"5555",cartController.cartItems));

                // Box<Todo> todoBox = Hive.box<Todo>('todos');
                // todoBox.add(Todo(title: ""+cartItems.toString(), description: "description"));


                todoBox.add(Todo(
                    deliveryInstruction:
                        cartController.deliveryInstruction.text,
                    dateTime: formatted,
                    orderId: Constant.singleValue,
                    cartItems: cartItems,
                    allPrice: cartController.totalAllPrice.toString(),
                    odrid: cartController.orderId));

                String error = await orderController.orderProduct(
                    userId: "2",
                    deliveryInstruction:
                        cartController.deliveryInstruction.text,
                    totalPrice: cartController.totalAllPrice.toString(),
                    paymentMethod: Constant.singleValue,
                    cartItems:cartItems,
                    context: context);

               // Get.to(OrderScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

// class CheckoutBottomBar extends StatelessWidget {
//   const CheckoutBottomBar({
//     Key key,}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final cartController = Get.put(CartController());
//     final orderController = Get.put(OrderController());
//    // Box<OrderProduct> noteBox = Hive.box('notes');
//
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: 15,
//         horizontal: 30,
//       ),
//       // height: 174,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, -15),
//             blurRadius: 20,
//             color: Color(0xFFDADADA).withOpacity(0.15),
//           )
//         ],
//       ),
//       child: SafeArea(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Text("Total",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//                 Spacer(),
//                 Text("Tk "+cartController.totalAllPrice.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//
//               ],
//             ),
//             SizedBox(height: 20),
//             DefaultButton(
//               text: "Place Order",
//               press: () {
//                 final DateTime now = DateTime.now();
//                 final DateFormat format = DateFormat('yyyy-MM-dd');
//                 final String formatted = format.format(now);
//               //  orderController.orderItems.add(new OrderProduct(dateTime:formatted,cartItems: cartController.cartItems,deliveryInstruction: cartController.totalAllPrice.toString()));
//              //OrderController.orderItems.add(new OrderProduct(dateTime:formatted,cartItems: cartController.cartItems,deliveryInstruction: cartController.totalAllPrice.toString()));
//                var cartItems = List<Product>();
//                cartItems=cartController.cartItems;
//              //   orderController.addOrderHistory(new OrderProduct(dateTime:formatted,cartItems: cartItems,deliveryInstruction: cartController.totalAllPrice.toString()));
//
//              Constant.noteBox.add(OrderProduct(cartController.totalAllPrice.toString(),formatted,"5555",cartController.cartItems));
//
//
//                 //   Navigator.of(context).pop();
//
//
//                 Get.to(OrderScreen());
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/controllers/order_controller.dart';
import 'package:sq_cafe_user_app/models/order_product.dart';
import 'package:sq_cafe_user_app/models/product.dart';

import 'OrderDetailsList2.dart';

class OrderDetailsList extends StatefulWidget {
  final OrderProduct product;

  const OrderDetailsList(this.product);

  @override
  _OrderListPageState createState() => _OrderListPageState(this.product);
}

class _OrderListPageState extends State<OrderDetailsList> {
  final OrderProduct product;
  double totalPrice;

  _OrderListPageState(this.product);
var name ;
  @override
  void initState() {
    super.initState();
   // product.totalproductPrice=double.parse(product.price)*product.count;

    // product.cartItems.forEach((element) {
    //   name=element.name;
    // });
  }

  @override
  Widget build(BuildContext context) {
    //final ordercontroller = Get.put(OrderController());
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(""+product.dateTime
                            +" X ", style: TextStyle(fontSize: 14)),
                        Spacer(),
                        Text("Tk ", style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    Container(
                      height: 200, //MediaQuery.of(context).size.height,
                      child: Container(
                        //height:200,  //MediaQuery.of(context).size.height,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: product.cartItems.length,
                          itemBuilder: (context, index) {
                            // orderController.orderItems[index].cartItems.forEach((element) {
                            //   element.name;
                            // });
                            // var name;
                            // product.cartItems.forEach((element) {
                            //   name =element.name;
                            //   return Text("A"+name);
                            // });
                            //return Text(""+product.cartItems[index]);//+product.cartItems[index].name);//OrderDetailsList(orderController.orderItems[index]);
                            return OrderDetailsList2(product.cartItems[index]);
                          },
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              // Text(product.price, style: TextStyle(fontSize: 24)),
            ],
          ),
        ],
      ),
    );
  }
}
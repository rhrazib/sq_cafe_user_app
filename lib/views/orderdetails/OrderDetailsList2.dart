import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/controllers/order_controller.dart';
import 'package:sq_cafe_user_app/models/product.dart';
import 'package:sq_cafe_user_app/models/product.dart';

class OrderDetailsList2 extends StatefulWidget {
  final Product product;

  const OrderDetailsList2(this.product);

  @override
  _OrderListPageState createState() => _OrderListPageState(this.product);
}

class _OrderListPageState extends State<OrderDetailsList2> {
  final Product product;
  double totalPrice;

  _OrderListPageState(this.product);
var name ;
  @override
  void initState() {
    super.initState();
    //totalPrice=product.totalproductPrice+product.totalproductPrice;
  //  double totalAllPrice = product.fold(0, (sum, item) => sum + item.totalproductPrice);

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
                        Text(""+product.name+" X"+" "+product.count.toString(), style: TextStyle(fontSize: 14)),
                        Spacer(),
                        Text("Tk "+product.totalproductPrice.toString(), style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    // Divider(
                    //   color: Colors.black,
                    // ),
                    // Row(
                    //   children: [
                    //     Text(""+product.name+" X"+" "+product.count.toString(), style: TextStyle(fontSize: 14)),
                    //     Spacer(),
                    //     Text("Txt "+totalPrice.toString(), style: TextStyle(fontSize: 14)),
                    //   ],
                    // ),
                    // Container(
                    //   height: 200, //MediaQuery.of(context).size.height,
                    //   child: Container(
                    //     //height:200,  //MediaQuery.of(context).size.height,
                    //     margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    //     child: ListView.builder(
                    //       physics: ClampingScrollPhysics(),
                    //       shrinkWrap: true,
                    //       itemCount: product.,
                    //       itemBuilder: (context, index) {
                    //
                    //         return Text(""+product.cartItems[index]);//+product.cartItems[index].name);//OrderDetailsList(orderController.orderItems[index]);
                    //       },
                    //     ),
                    //   ),
                    // ),

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
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/models/product.dart';
import 'package:sq_cafe_user_app/views/CartScreen.dart';


class OrderList extends StatefulWidget {
  final Product product;

  const OrderList(this.product);

  @override
  _OrderListPageState createState() => _OrderListPageState(this.product);
}

class _OrderListPageState extends State<OrderList> {
  final Product product;
  double totalPrice;

  _OrderListPageState(this.product);

  @override
  void initState() {
    super.initState();
    product.totalproductPrice=double.parse(product.price)*product.count;
    //totalPrice=double.parse(product.price)*product.count;
  }

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
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
                          Text(product.count.toString()+" X "+product.name, style: TextStyle(fontSize: 14)),
                          Spacer(),
                          Text("Tk "+ (product.totalproductPrice).toString(), style: TextStyle(fontSize: 14)),
                        ],
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

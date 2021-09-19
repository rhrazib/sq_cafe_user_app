import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/Home%20Page.dart';
import 'package:sq_cafe_user_app/models/dbtest/todo_adapter.dart';
import 'package:sq_cafe_user_app/rnd/new%20rnd/app_colors.dart';

import '../OrderDetailsList.dart';

class OrderHistoryDetails extends StatefulWidget {
  final Todo product;
  const OrderHistoryDetails(this.product);

  @override
  _OrderScreenState createState() => _OrderScreenState(this.product);
}

class _OrderScreenState extends State<OrderHistoryDetails> {
  final Todo product;

  _OrderScreenState(this.product);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: buildAppBar(context),
      body: OrderDetailsList(product),//OrderDetailsBody(),
      //bottomNavigationBar: CheckoutBottomBar(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return
    AppBar(
      title: Text("Order History Details"),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
            ),
  onPressed: () => Navigator.pop(context),

  // onPressed: () {
            //   Get.offAll(HomePage());
            // }

            ),
      ],
      //<Widget>[]
      backgroundColor: swiggyOrange,
      //Colors.red.shade700,
      elevation: 50.0,
      leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          tooltip: 'Menu Icon',
          onPressed: () => Navigator.pop(context)),
      //IconButton
      brightness: Brightness.dark,
    );
  //   AppBar(
  //   backgroundColor: swiggyOrange,
  //   title:  Text(
  //     "Your Order",
  //     style: TextStyle(color: Colors.white),
  //   ),
  // );
}
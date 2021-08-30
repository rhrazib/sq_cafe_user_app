import 'package:flutter/material.dart';
import 'package:sq_cafe_user_app/views/Body.dart';
import 'package:sq_cafe_user_app/views/CheckoutCard.dart';
import 'package:sq_cafe_user_app/views/checkout/CheckoutBottomBar.dart';

import 'CheckOutBody.dart';

class CheckoutScreen extends StatelessWidget {
  //static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CheckOutBody(),
      bottomNavigationBar: CheckoutBottomBar(),
    );
  }
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title:  Text(
        "Checkout",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
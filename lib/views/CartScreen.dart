import 'package:flutter/material.dart';
import 'package:sq_cafe_user_app/views/Body.dart';
import 'package:sq_cafe_user_app/views/CheckoutCard.dart';

class CartScreen extends StatelessWidget {
  //static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            // "${demoCarts.length} items",
            "itmes",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
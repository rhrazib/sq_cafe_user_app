import 'package:flutter/material.dart';
import 'package:sq_cafe_user_app/views/Body.dart';
import 'package:sq_cafe_user_app/views/CheckoutCard.dart';

class CheckoutScreen extends StatelessWidget {
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
      title:  Text(
        "Your Cart",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
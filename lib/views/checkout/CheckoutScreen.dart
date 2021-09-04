import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/Home%20Page.dart';
import 'package:sq_cafe_user_app/rnd/new%20rnd/app_colors.dart';
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
      title:  Text("Checkout"),
      backgroundColor: swiggyOrange,
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
    //     "Checkout",
    //     style: TextStyle(color: Colors.white),
    //   ),
    // );
  }
}

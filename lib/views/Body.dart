import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/views/product_tile.dart';

import 'cart/AddToCartPage.dart';
import 'cart_tile.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        //  crossAxisCount: 1,
        itemCount: cartController.cartItems.length,
        //  crossAxisSpacing: 16,
        // mainAxisSpacing: 16,
        itemBuilder: (context, index) {

          // return CartTile(
          //     cartController.cartItems[index]);
          return AddtoCartPage(
              cartController.cartItems[index]);
        },
        //  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
      )
    );
  }
}

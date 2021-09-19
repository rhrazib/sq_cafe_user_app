import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/rnd/new%20rnd/app_colors.dart';
import 'package:sq_cafe_user_app/rnd/voucher/Voucher.dart';
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
    return
      AppBar(
        title: Text("Your Cart"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16, top: 8),
            child:  IconButton(
                  icon: Icon(

                    Icons.add_box_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Get.to(Voucher());
                  }),

          )

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
    //   title:  Text("Your Cart"),
    //   backgroundColor: swiggyOrange,
    //   elevation: 50.0,
    //   leading: IconButton(
    //       icon: Icon(Icons.arrow_back_ios),
    //       tooltip: 'Menu Icon',
    //       onPressed: () => Navigator.pop(context)),
    //   //IconButton
    //   brightness: Brightness.dark,
    // );
  }
}
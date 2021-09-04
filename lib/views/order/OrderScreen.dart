import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/Home%20Page.dart';
import 'package:sq_cafe_user_app/rnd/new%20rnd/app_colors.dart';
import 'package:sq_cafe_user_app/views/checkout/CheckoutBottomBar.dart';
import 'OrderBody.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: buildAppBar(context),
      body: OrderBody(),
      //bottomNavigationBar: CheckoutBottomBar(),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return
    AppBar(
      title: Text("Your Order"),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {
              Get.offAll(HomePage());
            }),
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
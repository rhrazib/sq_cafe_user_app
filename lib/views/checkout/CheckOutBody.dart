import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/views/cart/AddToCartPage.dart';

import 'OrderList.dart';

class CheckOutBody extends StatefulWidget {
  const CheckOutBody({Key key}) : super(key: key);

  @override
  _CheckOutBodyState createState() => _CheckOutBodyState();
}

class _CheckOutBodyState extends State<CheckOutBody> {
  final cartController = Get.put(CartController());

  int _stackIndex = 0;

  String _singleValue = "Personal";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: TextFormField(
              minLines: 3,
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'delivery instructions',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.all(16),

              //padding: EdgeInsets.all(10),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.payments_outlined),
                        Text(' Payment methods'),
                      ],
                    ),
                    RadioButton(
                      description: "Personal",
                      value: "Personal",
                      groupValue: _singleValue,
                      onChanged: (value) => setState(
                        () => _singleValue = value,
                      ),
                      activeColor: Colors.red,
                    ),
                    RadioButton(
                      description: "Official",
                      value: "Official",
                      groupValue: _singleValue,
                      onChanged: (value) => setState(
                        () => _singleValue = value,
                      ),
                      //textPosition: RadioButtonTextPosition.left,
                      activeColor: Colors.red,
                    ),
                  ],
                ),
              )),
          Container(
              margin: EdgeInsets.all(16),
//height: 300,
              //padding: EdgeInsets.all(10),
              child: Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.reorder),
                        Text(' Order Summary'),
                      ],
                    ),
                    Container(
                      height: 300, //MediaQuery.of(context).size.height,
                      child: Container(
                        //height:200,  //MediaQuery.of(context).size.height,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: ListView.builder(
                          itemCount: cartController.cartItems.length,
                          itemBuilder: (context, index) {
                            return OrderList(cartController.cartItems[index]);
                          },
                        ),
                    ),
                    ),
                 ],
                ),
              )),
        ],
      ),
    );
  }
}

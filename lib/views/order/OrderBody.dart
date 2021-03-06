import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/views/checkout/OrderList.dart';
class OrderBody extends StatefulWidget {
  const OrderBody({Key key}) : super(key: key);

  @override
  _CheckOutBodyState createState() => _CheckOutBodyState();
}

class _CheckOutBodyState extends State<OrderBody> {
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding:EdgeInsets.only(top: 16),
                  child: Text("10-20 mins",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
              Text("Estimated delivery time"),
              IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                },
                color: Colors.red,
              ),
              Text("Got your order, Mr Rokibul! Confirming with SQ cafe"),

            ],
          ),
          Container(
              margin: EdgeInsets.all(16),
              child: Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      //  Icon(Icons.reorder),
                        Padding(
                            padding:EdgeInsets.only(bottom: 16),
                            child: Text(' Order Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                    Padding(
                      padding:EdgeInsets.only(bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Your order number:'),
                          Text(' #s4z-nj5d'),
                        ],
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Delivery location:'),
                          Text(' Room No 12'),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
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
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding:EdgeInsets.only(bottom: 8,top: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Paid with:'),
                          Text(' Personal'),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(' Total:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        Text(' Tk 400',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
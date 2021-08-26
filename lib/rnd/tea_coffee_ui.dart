import 'package:flutter/material.dart';
import 'package:sq_cafe_user_app/rnd/voucher/VoucherDetails.dart';
import 'package:sq_cafe_user_app/models/product.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:get/get.dart';

class TeaCoffee extends StatelessWidget {
  final Product product;

   TeaCoffee(this.product);

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());

    return Card(
      elevation: 2,
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(
                          left: 16, top: 16, bottom: 0, right: 16),
                      child: Text(
                        "TRENDTECH >",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 8, right: 8),
                    child: Card(
                      elevation: 1,
                      color: Colors.yellow.shade50,
                      margin: EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 16, left: 8),
                              child: Text(
                                product.name,
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              )),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            product.price,
                                            style: TextStyle(
                                                fontSize: 32,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red.shade900),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 16, right: 16, bottom: 2),
                                            child: Column(
                                              children: [
                                                RawMaterialButton(
                                                  fillColor: Colors.green,
                                                  splashColor:
                                                      Colors.greenAccent,
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Detail",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                VoucherDetails()));
                                                  },
                                                  shape: const StadiumBorder(),
                                                ),
                                                Text(
                                                  "12:09 Jun 08  ",
                                                  //textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      height: 1,
                                      color: Colors.grey.shade400,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 8,
                                        right: 8,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                          product.price
                                           ,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11),
                                          ),
                                          InkWell(
                                            child: Icon(
                                              Icons.info,
                                              color: Colors.red.shade900,
                                            ),
                                            onTap: () {
                                              _showDialog(context);
                                            },
                                          )
                                          //   ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }));
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.orange.shade50,
        title: new Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: Icon(Icons.close),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  )),
              Text(
                "1. You are awesome!",
                style: TextStyle(fontSize: 10),
              ),
              Divider(
                color: Colors.black,
              ),
              Text(
                "2. You are awesome!",
                style: TextStyle(fontSize: 10),
              ),
              Divider(
                color: Colors.black,
              ),
              Text(
                "3. You are awesome!",
                style: TextStyle(fontSize: 10),
              ),
              Divider(
                color: Colors.black,
              ),
            ],
          ),
        ),
        //  content: new Text("You are awesome!"),
      );
    },
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/models/product.dart';
import 'package:sq_cafe_user_app/views/CartScreen.dart';

import '../Body.dart';

class AddtoCartPage extends StatefulWidget {
  final Product product;

  const AddtoCartPage(this.product);

  @override
  _AddtoCartPageState createState() => _AddtoCartPageState(this.product);
}

class _AddtoCartPageState extends State<AddtoCartPage> {
  final Product product;

  increment() => product.count++;

  decrement() => product.count--;

  _AddtoCartPageState(this.product);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            product.imageLink,
                            height: 80,
                            width: 80,),
                          // Image.network(
                          //   product.imageLink,
                          //   height: 80,
                          //   width: 80,
                          // ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(product.name,
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                              ),

                              Text("Tk "+product.price.toString(), style: TextStyle(fontSize: 14)),
                              // Text("Tk "+cartController.totalPrice.toString(),
                              //   style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ],
                          ),

                        ],
                      ),
                      //Text(product.price, style: TextStyle(fontSize: 24)),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      cartController.removeFromCart(product);
                      //initState();
                      //cartController.cartItems.refresh();
                     // Body();
                     // Get.to(CartScreen());
                     // Get.reset();
                     // AddtoCartPage(product);

                      //  Navigator.pushReplacement(
                     //    context,
                     //    MaterialPageRoute(
                     //      builder: (context) => CartScreen(),
                     //    ),
                     //  );
                    });
                  },
                  color: Colors.red,
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                              decrement();
                          //total = double.parse(product.price) * product.count;
                        //  product.totalproductPrice= double.parse(product.price) * product.count;

                              product.totalproductPrice= product.price * product.count;

                          // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => CartScreen(),
                              //   ),
                              // );
                        });
                      },
                      iconSize: 15,
                    ),
                    Text('${product.count}'),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          increment();
                          //product.totalproductPrice= double.parse(product.price) * product.count;
                          product.totalproductPrice= product.price* product.count;

                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => CartScreen(),
                          //   ),
                          // );
                        });
                      },
                      iconSize: 15,
                    ),
                  ],
                ),
               // Text(product.price, style: TextStyle(fontSize: 24)),
              ],
            ),
            // Row(
            //   children: [
            //     IconButton(
            //       icon: Icon(Icons.delete),
            //       onPressed: () {
            //         cartController.removeFromCart(product);
            //       },
            //       color: Colors.red,
            //     ),
            //     Column(
            //       children: [
            //         IconButton(
            //           icon: Icon(Icons.remove),
            //           onPressed: () {
            //             setState(() {
            //               decrement();
            //             });
            //           },
            //           iconSize: 15,
            //         ),
            //         Text('${product.count}'),
            //         IconButton(
            //           icon: Icon(Icons.add),
            //           onPressed: () {
            //             setState(() {
            //               increment();
            //             });
            //           },
            //           iconSize: 15,
            //         ),
            //       ],
            //     ),
            //   ],
            // )

          ],
        ),
      ),
    );
  }
}

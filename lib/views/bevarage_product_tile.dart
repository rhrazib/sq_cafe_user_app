import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/models/product.dart';

import 'itemdetails/FoodDetailsPage.dart';

class BevarageProductTile extends StatefulWidget {
  final Product product;

  const BevarageProductTile(this.product);

  @override
  _ProductTilePageState createState() => _ProductTilePageState(this.product);
}

class _ProductTilePageState extends State<BevarageProductTile> {
  final Product product;
  var countItem = 1.obs;

  increment() => countItem++;

  decrement() => countItem--;

  _ProductTilePageState(this.product);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //  TextEditingController inputController = new TextEditingController();
    final cartController = Get.put(CartController());

    return InkWell(
      onTap: () {
        Get.to(FoodDetailsPage(product));
      },
      child: Card(
        margin: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.name, //.substring(0, 20),
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                // Text(
                                //   product.description.substring(0, 30),
                                // ),
                                Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.65,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          product.description,
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w400,
                                              height: 1.50),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "from Tk " + product.price,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold,
                                              height: 1.50),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Spacer(),
                  // Container(
                  //   width: MediaQuery.of(context).size.width * 0.35,
                  //
                  //   child:
                  Expanded(
                      flex: 2,
                      // child:
                      // Card(
                      //     clipBehavior: Clip.antiAlias,
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(10.0),
                      //     ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          product.imageLink,
                          fit: BoxFit.cover, ),

                        // Image.network(
                        //   product.imageLink,
                        //   fit: BoxFit.cover,
                        // ),
                      )
                      //  ),
                      ),

                  // Image.network(
                  //   product.imageLink,
                  //   // "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
                  // ),
                  //),
                  // ),
                  // Text(product.price, style: TextStyle(fontSize: 24)),
                ],
              ),

              // Column(
              //   children: [
              //     IconButton(
              //       icon: Icon(Icons.remove),
              //       onPressed: () {
              //         setState(() {
              //           decrement();
              //         });
              //       },
              //       iconSize: 15,
              //     ),
              //     //Text(cartController.countItem.string),
              //     Text('${countItem}'),
              //
              //     IconButton(
              //       icon: Icon(Icons.add),
              //       onPressed: () {
              //         setState(() {
              //           increment();
              //         });
              //       },
              //       iconSize: 15,
              //     ),
              //   ],
              // ),

              // RaisedButton(
              //   onPressed: () {
              //     double total;
              //     var isExist = false;
              //     cartController.cartItems.forEach((element) {
              //       if (element.id == product.id) {
              //         isExist = true;
              //         product.count = countItem.toInt();
              //       }
              //     });
              //     if (isExist) {
              //       var itemcount =product.count = countItem.toInt();
              //       product.count = countItem.toInt();
              //       isExist = false;
              //       total = double.parse(product.price)*itemcount;
              //       showToast("Cart Updated"+total.toString(), context: context);
              //     } else {
              //       var itemcount =product.count = countItem.toInt();
              //       cartController.addToCart(product);
              //       showToast("Added to Cart"+product.name, context: context);
              //       setState(() {
              //         double  l =itemcount.toDouble();
              //        var i = double.parse(product.price);
              //         total = i*l;
              //       });
              //       showToast("Cart Added"+total.toString(), context: context);
              //     }
              //   },
              //   color: Colors.blue,
              //   textColor: Colors.white,
              //   child: Text('Add to Cart'),
              // ),

              // RaisedButton(
              //   onPressed: () {
              //     cartController.removeFromCart(product);
              //   },
              //   color: Colors.red,
              //   textColor: Colors.white,
              //   child: Text('Delete'),
              // ),
              // Obx(() => IconButton(
              //       icon: product.isFavorite.value
              //           ? Icon(Icons.check_box_rounded)
              //           : Icon(Icons.check_box_outline_blank_outlined),
              //       onPressed: () {
              //         product.isFavorite.toggle();
              //       },
              //     ))
            ],
          ),
        ),
      ),
    );
  }
}

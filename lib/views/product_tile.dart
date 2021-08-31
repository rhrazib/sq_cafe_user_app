import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/models/product.dart';

import 'itemdetails/FoodDetailsPage.dart';

class ProductTile extends StatefulWidget {
  final Product product;

  const ProductTile(this.product);

  @override
  _ProductTilePageState createState() => _ProductTilePageState(this.product);
}

class _ProductTilePageState extends State<ProductTile> {
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
      onTap: (){
        Get.to(FoodDetailsPage(product));
      },
      child: Card(
        margin: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.network(
                              product.imageLink,
                             // "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
                              height: 70,
                              width: 70,
                            ),
                            Text(
                              product.name.substring(0, 10),
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Text(
                          product.description.substring(0, 35),
                        ),
                      ],
                    ),
                  ),
                  Text(product.price, style: TextStyle(fontSize: 24)),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        decrement();
                      });
                    },
                    iconSize: 15,
                  ),
                  //Text(cartController.countItem.string),
                  Text('${countItem}'),

                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        increment();
                      });
                    },
                    iconSize: 15,
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  double total;
                  var isExist = false;
                  cartController.cartItems.forEach((element) {
                    if (element.id == product.id) {
                      isExist = true;
                      product.count = countItem.toInt();
                    }
                  });
                  if (isExist) {
                    var itemcount =product.count = countItem.toInt();
                    product.count = countItem.toInt();
                    isExist = false;
                    total = double.parse(product.price)*itemcount;
                    showToast("Cart Updated"+total.toString(), context: context);
                  } else {
                    var itemcount =product.count = countItem.toInt();
                    cartController.addToCart(product);
                    showToast("Added to Cart"+product.name, context: context);
                    setState(() {
                      double  l =itemcount.toDouble();
                     var i = double.parse(product.price);
                      total = i*l;
                    });
                    showToast("Cart Added"+total.toString(), context: context);
                  }
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Add to Cart'),
              ),
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

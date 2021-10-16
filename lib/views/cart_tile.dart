import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/models/product.dart';

class CartTile extends StatelessWidget {
  final Product product;

  const CartTile(this.product);

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());

    return Card(

      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(product.count.toString(),
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                        "product.description"),
                  ],
                ),
                Text(product.price.toString(),
                    style: TextStyle(fontSize: 24)),
              ],
            ),
            RaisedButton(
              onPressed: () {
                showToast(product.count.toString()+"aa", context: context);

                // cartController.cartItems.forEach((element) {
                //   if (element.name == product.name) {
                //     var pro = double.parse(element.price)+double.parse(element.price);
                //     product.price=pro.toString();
                //     product.count=product.count+1;
                //   } else {
                //     cartController
                //         .addToCart(product);
                //   }
                // });
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Add to Cart'),
            ),
            RaisedButton(
              onPressed: () {
                cartController
                    .removeFromCart(product);
              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text('Delete'),
            ),
            Obx(() =>
                IconButton(
                  icon: product.isFavorite.value
                      ? Icon(Icons.check_box_rounded)
                      : Icon(Icons
                      .check_box_outline_blank_outlined),
                  onPressed: () {
                    product.isFavorite
                        .toggle();
                  },
                ))
          ],
        ),
      ),

    );
    // return Card(
    //   elevation: 2,
    //   child: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Stack(
    //           children: [
    //             Container(
    //               height: 180,
    //               width: double.infinity,
    //               clipBehavior: Clip.antiAlias,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(4),
    //               ),
    //               child: Image.network(
    //                 product.imageLink,
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //             Positioned(
    //               right: 0,
    //               child: Obx(() => CircleAvatar(
    //                     backgroundColor: Colors.white,
    //                     child: IconButton(
    //                       icon: product.isFavorite.value
    //                           ? Icon(Icons.favorite_rounded)
    //                           : Icon(Icons.favorite_border),
    //                       onPressed: () {
    //                         product.isFavorite.toggle();
    //                       },
    //                     ),
    //                   )),
    //             )
    //           ],
    //         ),
    //         SizedBox(height: 8),
    //         Text(
    //           product.name,
    //           maxLines: 2,
    //           style:
    //               TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
    //           overflow: TextOverflow.ellipsis,
    //         ),
    //         SizedBox(height: 8),
    //         if (product.rating != null)
    //           Container(
    //             decoration: BoxDecoration(
    //               color: Colors.green,
    //               borderRadius: BorderRadius.circular(12),
    //             ),
    //             padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
    //             child: Row(
    //               mainAxisSize: MainAxisSize.min,
    //               children: [
    //                 Text(
    //                   product.rating.toString(),
    //                   style: TextStyle(color: Colors.white),
    //                 ),
    //                 Icon(
    //                   Icons.star,
    //                   size: 16,
    //                   color: Colors.white,
    //                 ),
    //               ],
    //             ),
    //           ),
    //         SizedBox(height: 8),
    //         Text('\$${product.price}',
    //             style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
    //       ],
    //     ),
    //   ),
    // );
  }
}

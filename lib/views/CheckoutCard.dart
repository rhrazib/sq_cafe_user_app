import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/views/component/DefaultButton.dart';

import 'checkout/CheckoutScreen.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Total (incl VAT)",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                // Container(
                //   padding: EdgeInsets.all(10),
                //   height: 40,
                //   width: 40,
                //   decoration: BoxDecoration(
                //     color: Color(0xFFF5F6F9),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: Text("Total (incl VAT)",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                // ),
                Spacer(),
                Text("Tk "+cartController.totalPrice.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

              ],
            ),
            SizedBox(height: 20),
            DefaultButton(
              text: "Review payment & location",
              press: () {
                Get.to(CheckoutScreen());
              },
            ),

          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:sq_cafe_user_app/views/component/DefaultButton.dart';
//
// class CheckoutCard extends StatelessWidget {
//   const CheckoutCard({
//     Key key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: 15,
//         horizontal: 30,
//       ),
//       // height: 174,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, -15),
//             blurRadius: 20,
//             color: Color(0xFFDADADA).withOpacity(0.15),
//           )
//         ],
//       ),
//       child: SafeArea(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   height: 40,
//                   width: 40,
//                   decoration: BoxDecoration(
//                     color: Color(0xFFF5F6F9),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: SvgPicture.asset("assets/icons/receipt.svg"),
//                 ),
//                 Spacer(),
//                 Text("Add voucher code"),
//                 const SizedBox(width: 10),
//                 Icon(
//                   Icons.arrow_forward_ios,
//                   size: 12,
//                   color: Colors.red,
//                 )
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text.rich(
//                   TextSpan(
//                     text: "Total:\n",
//                     children: [
//                       TextSpan(
//                         text: "\$337.15",
//                         style: TextStyle(fontSize: 16, color: Colors.black),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: 190,
//                   child: DefaultButton(
//                     text: "Check Out",
//                     press: () {},
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
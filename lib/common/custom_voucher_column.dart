import 'package:flutter/material.dart';
import 'package:sq_cafe_user_app/models/dbtest/todo_adapter.dart';
import 'package:sq_cafe_user_app/rnd/new%20rnd/app_colors.dart';
import 'package:sq_cafe_user_app/rnd/voucher/VoucherDetails.dart';
import 'package:sq_cafe_user_app/views/orderdetails/OrderDetailsList.dart';
import 'package:sq_cafe_user_app/views/orderdetails/OrderDetailsList2.dart';
import 'package:sq_cafe_user_app/views/orderdetails/orderhistorydetails/OrderHistoryDetails.dart';
import 'dart:math';

class CustomVoucherColumn extends StatefulWidget {
  final Todo product;

  const CustomVoucherColumn(this.product);

  @override
  _CustomVoucherColumnState createState() =>
      _CustomVoucherColumnState(this.product);
}

class _CustomVoucherColumnState extends State<CustomVoucherColumn> {
  final Todo product;

  _CustomVoucherColumnState(this.product);
//   int randomNumber;
// @override
//   void initState() {
//   var rng = new Random();
//   randomNumber= rng.nextInt(100);
//
//
//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    return Container(
      //elevation: 2,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            child: Card(
              elevation: 1,
              color: Colors.orange.shade50,
              margin: EdgeInsets.only(top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 16, left: 8),
                      child: Text(
                        "Order No: "+product.odrid,//"SQ188"+randomNumber.toString(),//+product.orderId,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
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
                                    product.allPrice+" Tk",
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
                                          fillColor: swiggyOrange,
                                          splashColor: Colors.greenAccent,
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
                                                       // VoucherDetails()));
                                                    OrderHistoryDetails(product)));
                                           // OrderDetailsList(product)));
                                                  //  product.cartItems.
                                          //  OrderDetailsList2(product)));
                                          },
                                          shape: const StadiumBorder(),
                                        ),
                                        Text(
                                          product.dateTime,
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
      ),
    );
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
}

// class CustomVoucherColumn extends StatelessWidget {
//   final Todo product;
//
//   const CustomVoucherColumn(this.product);
//
//   final ButtonStyle flatButtonStyle = TextButton.styleFrom(
//     primary: Colors.black87,
//     minimumSize: Size(88, 36),
//     padding: EdgeInsets.symmetric(horizontal: 16.0),
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.all(Radius.circular(2.0)),
//     ),
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         //elevation: 2,
//         child: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.only(left: 8, right: 8),
//               child: Card(
//                 elevation: 1,
//                 color: Colors.yellow.shade50,
//                 margin: EdgeInsets.only( top: 8),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                         margin: EdgeInsets.only(top: 16, left: 8),
//                         child: Text(
//                           "Order No",
//                           style: TextStyle(
//                               fontSize: 14, fontWeight: FontWeight.bold),
//                         )),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.only(left: 8),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       r" $" "500",
//                                       style: TextStyle(
//                                           fontSize: 32,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.red.shade900),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.only(
//                                           left: 16, right: 16, bottom: 2),
//                                       child: Column(
//                                         children: [
//                                           RawMaterialButton(
//                                             fillColor: Colors.green,
//                                             splashColor:
//                                             Colors.greenAccent,
//                                             child: Container(
//                                               alignment: Alignment.center,
//                                               child: Text(
//                                                 "Detail",
//                                                 style: TextStyle(
//                                                   color: Colors.white,
//                                                 ),
//                                               ),
//                                             ),
//                                             onPressed: () {
//                                               Navigator.push(
//                                                   context,
//                                                   MaterialPageRoute(
//                                                       builder: (context) =>
//                                                           VoucherDetails()));
//                                             },
//                                             shape: const StadiumBorder(),
//                                           ),
//                                           Text(
//                                             "12:09 Jun 08  ",
//                                             //textAlign: TextAlign.right,
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 10),
//                                           ),
//                                         ],
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                               Divider(
//                                 height: 1,
//                                 color: Colors.grey.shade400,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),);
//   }
// }

// void _showDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: Colors.orange.shade50,
//         title: new Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                   alignment: Alignment.centerRight,
//                   child: InkWell(
//                     child: Icon(Icons.close),
//                     onTap: () {
//                       Navigator.of(context).pop();
//                     },
//                   )),
//               Text(
//                 "1. You are awesome!",
//                 style: TextStyle(fontSize: 10),
//               ),
//               Divider(
//                 color: Colors.black,
//               ),
//               Text(
//                 "2. You are awesome!",
//                 style: TextStyle(fontSize: 10),
//               ),
//               Divider(
//                 color: Colors.black,
//               ),
//               Text(
//                 "3. You are awesome!",
//                 style: TextStyle(fontSize: 10),
//               ),
//               Divider(
//                 color: Colors.black,
//               ),
//             ],
//           ),
//         ),
//         //  content: new Text("You are awesome!"),
//       );
//     },
//   );
// }

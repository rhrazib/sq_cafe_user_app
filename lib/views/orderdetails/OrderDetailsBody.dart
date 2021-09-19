import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/controllers/order_controller.dart';
import 'package:sq_cafe_user_app/models/dbtest/todo_adapter.dart';
import 'package:sq_cafe_user_app/models/order_product.dart';
import 'package:sq_cafe_user_app/views/checkout/CheckoutBottomBar.dart';
import 'package:sq_cafe_user_app/views/checkout/OrderList.dart';
import 'package:sq_cafe_user_app/views/orderdetails/constant.dart';
import 'package:sq_cafe_user_app/models/order_adapter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'OrderDetailsList.dart';
class OrderDetailsBody extends StatefulWidget {
  const OrderDetailsBody({Key key}) : super(key: key);

  @override
  _CheckOutBodyState createState() => _CheckOutBodyState();
}

class _CheckOutBodyState extends State<OrderDetailsBody> {
 // final cartController = Get.put(CartController());
  final orderController = Get.put(OrderController());
 // var box;
 //  @override
 //  void initState() {
 //  //Hive.openBox<Todo>('todos');
 // //box = Hive.openBox('todos');
 //    _openBox();
 //  super.initState();
 //  }
 //
 //  Future _openBox() async {
 //      await Hive.openBox<Todo>('todos');
 //    }

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
                  child: Text("All of your order",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),

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
                      //   Padding(
                      //       padding:EdgeInsets.only(bottom: 16),
                      //       child: Text(' Order Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                    // Padding(
                    //   padding:EdgeInsets.only(bottom: 8),
                    //   child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Text(' Your order number:'),
                    //       Text(' #s4z-nj5d'),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding:EdgeInsets.only(bottom: 8),
                    //   child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Text(' Delivery location:'),
                    //       Text(' Room No 12'),
                    //     ],
                    //   ),
                    // ),
                    // Divider(
                    //   color: Colors.black,
                    // ),
                    Container(
                      height: //300,
                      MediaQuery.of(context).size.height,
                      child: Container(
                        //height:200,  //MediaQuery.of(context).size.height,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child:
                        // ValueListenableBuilder(
                        //   valueListenable: Hive.box<Todo>('todos').listenable(),
                        //   builder: (context, Box<Todo> box, _) {
                        //     if (box.values.isEmpty) {
                        //       return Center(
                        //         child: Text("No data available!",
                        //             style: TextStyle(fontFamily: 'Montserrat')),
                        //       );
                        //     }
                        //     return ListView.builder(
                        //         itemCount: box.length,
                        //         itemBuilder: (context, index) {
                        //           Todo todo = box.getAt(index);
                        //           return ListTile(
                        //             onLongPress: () async {
                        //               await box.deleteAt(index);
                        //             },
                        //             title: Text(
                        //               todo.deliveryInstruction,
                        //               style: TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
                        //             ),
                        //             subtitle: Text(
                        //               todo.dateTime,
                        //               style: TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
                        //             ),
                        //           );
                        //         });
                        //   },
                        // ),


                        ValueListenableBuilder(

                          valueListenable:Hive.box<Todo>('todos').listenable(),
                          builder: (context, Box<Todo> box, _) {
                            if (box.values.isEmpty) {
                              return Center(
                                child: Text("No data available!",
                                    style: TextStyle(fontFamily: 'Montserrat')),
                              );
                            }
                            return ListView.builder(
                                itemCount: box.length,
                                itemBuilder: (context, index) {
                                  Todo todo = box.getAt(index);
                                  return OrderDetailsList(todo,);

                                });
                          },
                        ),


                        // GetBuilder(
                        //   builder: (OrderController orderController){
                        //    return ListView.builder(
                        //       itemCount: Constant.noteBox.length,
                        //       itemBuilder: (context, index) {
                        //         // orderController.orderItems[index].cartItems.forEach((element) {
                        //         //   element.name;
                        //         // });
                        //         return OrderDetailsList(Constant.noteBox.values);
                        //           //OrderDetailsList(orderController.orderItems[index]);
                        //       },
                        //     );
                        //
                        //   },
                        // ),
                      ),
                    ),
                    // Divider(
                    //   color: Colors.black,
                    // ),
                    // Padding(
                    //   padding:EdgeInsets.only(bottom: 8,top: 8),
                    //   child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Text(' Paid with:'),
                    //       Text(' Personal'),
                    //     ],
                    //   ),
                    // ),
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(' Total:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    //     Text(' Tk '+orderController.orderItems.length.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    //    // Text(' Tk '+orderController.orderItems.length.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    //   ],
                    // ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
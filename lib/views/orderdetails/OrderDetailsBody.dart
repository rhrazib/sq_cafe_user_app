import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/common/custom_voucher_column.dart';
import 'package:sq_cafe_user_app/controllers/order_history_controller.dart';
class OrderDetailsBody extends StatefulWidget {
  const OrderDetailsBody({Key key}) : super(key: key);

  @override
  _CheckOutBodyState createState() => _CheckOutBodyState();
}

class _CheckOutBodyState extends State<OrderDetailsBody> {
  final orderhistoryController = Get.put(OrderHistoryController());
  @override
  void initState() {
    super.initState();
  }


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
                    Container(
                      height: //300,
                      MediaQuery.of(context).size.height,
                      child:
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),

                          child: Column(
                            children: [
                              Expanded(
                                child: Obx(() {
                                  if (orderhistoryController.isLoading.value)
                                    return Center(child: CircularProgressIndicator());
                                  else
                                    return ListView.builder(
                                      //  crossAxisCount: 1,
                                      itemCount: orderhistoryController.orderRes.length,
                                      //  crossAxisSpacing: 16,
                                      // mainAxisSpacing: 16,
                                      itemBuilder: (context, index) {
                                        return CustomVoucherColumn(
                                            orderhistoryController.orderRes[index]);
                                      },
                                    );
                                }),
                              ),
                            ],
                          )),






                      // Container(
                      //   //height:200,  //MediaQuery.of(context).size.height,
                      //   margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      //   child: ValueListenableBuilder(
                      //
                      //     valueListenable:Hive.box<Todo>('todos').listenable(),
                      //     builder: (context, Box<Todo> box, _) {
                      //       if (box.values.isEmpty) {
                      //         return Center(
                      //           child: Text("No data available!",
                      //               style: TextStyle(fontFamily: 'Montserrat')),
                      //         );
                      //       }
                      //       return ListView.builder(
                      //           itemCount: box.length,
                      //           itemBuilder: (context, index) {
                      //             Todo todo = box.getAt(index);
                      //             return
                      //               CustomVoucherColumn(todo);
                      //               //OrderDetailsList(todo,);
                      //
                      //           });
                      //     },
                      //   ),
                      // ),


                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
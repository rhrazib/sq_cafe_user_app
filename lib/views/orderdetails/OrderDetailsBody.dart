import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:sq_cafe_user_app/common/custom_voucher_column.dart';
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
  final orderController = Get.put(OrderController());
    Box<Todo> box;
  @override
  void initState() {
   box=  Hive.box<Todo>('todos');
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
                        //height:200,  //MediaQuery.of(context).size.height,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: ValueListenableBuilder(

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
                                  return
                                    CustomVoucherColumn(todo);
                                    //OrderDetailsList(todo,);

                                });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:sq_cafe_user_app/views/orderdetails/OrderHistoryResp.dart';

import 'OrderDetailsList2.dart';
import 'constant.dart';

class OrderDetailsList extends StatefulWidget {
  final OrderHistoryResp product;

  const OrderDetailsList(this.product);

  @override
  _OrderListPageState createState() => _OrderListPageState(this.product);
}

class _OrderListPageState extends State<OrderDetailsList> {
  final OrderHistoryResp product;
  double totalPrice;

  _OrderListPageState(this.product);

  var name;

  @override
  void initState() {
    super.initState();
    // product.totalproductPrice=double.parse(product.price)*product.count;

    // product.cartItems.forEach((element) {
    //   name=element.name;
    // });
  }

  @override
  Widget build(BuildContext context) {
    //final ordercontroller = Get.put(OrderController());
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8, top: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Order number:'),
                          Text('#SQ'+product.orderId.toString()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Text(" Order Date:", style: TextStyle(fontSize: 14)),
                          Spacer(),
                          Text("" + product.createDate +":"+product.createTime,
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                    !Constant.isFirstScreen ?Container()
                    :Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Delivery location:'),
                          Text(product.deliveryInstruction),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Row(
                        children: [
                          Text(" Payment Type:",
                              style: TextStyle(fontSize: 14)),
                          Spacer(),
                          Text("" + product.paymentMethod,
                              style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ),
                    // Container(
                    //  height://300,
                    // MediaQuery.of(context).size.height,
                    //child:
                    SingleChildScrollView(
                      child: Container(
                        //   padding: EdgeInsets.only(bottom: 0),
                        height: //500,
                            MediaQuery.of(context).size.height * .20,
//MediaQuery.of(context).size.height/4,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          //shrinkWrap: true,
                          itemCount: product.productOrders.length,
                          itemBuilder: (context, index) {
                            // orderController.orderItems[index].cartItems.forEach((element) {
                            //   element.name;
                            // });
                            // var name;
                            // product.cartItems.forEach((element) {
                            //   name =element.name;
                            //   return Text("A"+name);
                            // });
                            //return Text(""+product.cartItems[index]);//+product.cartItems[index].name);//OrderDetailsList(orderController.orderItems[index]);
                            return OrderDetailsList2(product.productOrders[index]);
                          },
                        ),
                      ),
                    ),
                    //  ),
                    Row(
                      children: [
                        Text(" Total Price:", style: TextStyle(fontSize: 14)),
                        Spacer(),
                        Text("" + product.totalPrice.toString(),
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),

                    Divider(
                      color: Colors.grey.shade400,
                    )
                  ],
                ),
              ),
              // Text(product.price, style: TextStyle(fontSize: 24)),
            ],
          ),
        ],
      ),
    );
  }
}

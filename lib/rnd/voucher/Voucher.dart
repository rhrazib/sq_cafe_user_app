import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/common/custom_voucher_column.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/controllers/product_controller.dart';
import 'package:sq_cafe_user_app/views/CartScreen.dart';
import 'package:sq_cafe_user_app/views/homepage.dart';
import 'package:sq_cafe_user_app/views/product_tile.dart';

class Voucher extends StatefulWidget {
  @override
  _VoucherState createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> with TickerProviderStateMixin {
  TabController _tabController;
  final ProductController productController = Get.put(ProductController());
  final cartController = Get.put(CartController());

  var amount = 500;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return CartScreen();
              },));
          },
          backgroundColor: Colors.amber,
          icon: Icon(
            Icons.add_shopping_cart_rounded,
            color: Colors.black,
          ),
          label: GetX<CartController>(builder: (controller) {
            return Text(
              controller.count.toString(),
              style: TextStyle(color: Colors.black, fontSize: 24),
            );
          }),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false, // Used for removing back buttoon.
          backgroundColor: Colors.grey.shade50,
          title: Row(
            children: [
              InkWell(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                ' Item',
                style: TextStyle(fontSize: 16, color: Colors.black),
              )
            ],
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Tea/Coffee',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Snacks',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Bevarage',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 16, bottom: 16),
          child: TabBarView(
            controller: _tabController,
            children: [
              //  CustomVoucherColumn(amount: "$amount"),
              //HomePage(),
              Container(
                  child: Column(
                children: [
                  Expanded(
                    child: Obx(() {
                      if (productController.isLoading.value)
                        return Center(child: CircularProgressIndicator());
                      else
                        return ListView.builder(
                          //  crossAxisCount: 1,
                          itemCount: productController.productList.length,
                          //  crossAxisSpacing: 16,
                          // mainAxisSpacing: 16,
                          itemBuilder: (context, index) {
                            return ProductTile(
                                productController.productList[index]);
                          },
                          //  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                        );
                    }),
                  ),
                  // Expanded(





                  // Container(
                  //   height: 140,
                  //   child: GetX<CartController>(builder: (controller) {
                  //     return Scaffold(
                  //       body: Text(
                  //         'Total amount: \$ ${controller.totalPrice}',
                  //         style: TextStyle(fontSize: 32, color: Colors.black),
                  //       ),
                  //       floatingActionButton: FloatingActionButton.extended(
                  //         onPressed: () {
                  //           Navigator.of(context).push(MaterialPageRoute<void>(
                  //             builder: (BuildContext context) {
                  //               return CartScreen();
                  //             },));
                  //         },
                  //         backgroundColor: Colors.amber,
                  //         icon: Icon(
                  //           Icons.add_shopping_cart_rounded,
                  //           color: Colors.black,
                  //         ),
                  //         label: GetX<CartController>(builder: (controller) {
                  //           return Text(
                  //             controller.count.toString(),
                  //             style: TextStyle(color: Colors.black, fontSize: 24),
                  //           );
                  //         }),
                  //       ),
                  //     );
                  //
                  //
                  //
                  //
                  //   }),
                  // )





                  // ),
                  // SizedBox(height: 100),
                ],
              )),
              CustomVoucherColumn(amount: "$amount"),
              CustomVoucherColumn(amount: "$amount"),
            ],
          ),
        ));
  }
}

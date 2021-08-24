import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/common/custom_voucher_column.dart';
import 'package:sq_cafe_user_app/controllers/product_controller.dart';
import 'package:sq_cafe_user_app/views/homepage.dart';
import 'package:sq_cafe_user_app/views/product_tile.dart';


class Voucher extends StatefulWidget {

  @override
  _VoucherState createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> with TickerProviderStateMixin {
   TabController _tabController;
   final ProductController productController = Get.put(ProductController());

   var amount = 500;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                onTap: (){
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
                child: Expanded(
                  child: Obx(() {
                    if (productController.isLoading.value)
                      return Center(child: CircularProgressIndicator());
                    else
                      return StaggeredGridView.countBuilder(
                        crossAxisCount: 2,
                        itemCount: productController.productList.length,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        itemBuilder: (context, index) {
                          return ProductTile(productController.productList[index]);
                        },
                        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                      );
                  }),
                ),
              ),
              CustomVoucherColumn(amount: "$amount"),
              CustomVoucherColumn(amount: "$amount"),
            ],
          ),
        ));
  }
}

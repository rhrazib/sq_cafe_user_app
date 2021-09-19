import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/models/product.dart';
import 'package:sq_cafe_user_app/rnd/new%20rnd/PopularCategoriesView.dart';
import 'package:sq_cafe_user_app/rnd/new%20rnd/app_colors.dart';
import 'package:sq_cafe_user_app/views/component/DefaultButton.dart';
import 'package:sq_cafe_user_app/views/counter/constants.dart';
import 'package:sq_cafe_user_app/views/itemdetails/ChoiceOfFlavourView.dart';

import '../CartScreen.dart';

class FoodDetailsPage extends StatefulWidget {
  final Product product;

  const FoodDetailsPage(this.product);

  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState(this.product);
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  _FoodDetailsPageState(this.product);

  final Product product;

  @override
  Widget build(BuildContext context) {
    String _singleValue = "Personal";
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Item Details"),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16, top: 8),
              child: Badge(
                badgeColor: Colors.white,
                badgeContent: GetX<CartController>(
                  builder: (controller) {
                    return Text(
                      controller.count.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    );
                  },
                ),
                child: IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Get.to(CartScreen());
                    }),
              ),
            )
          ],
          //<Widget>[]
          backgroundColor: swiggyOrange,
          //Colors.red.shade700,
          elevation: 50.0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              tooltip: 'Menu Icon',
              onPressed: () => Navigator.pop(context)),
          //IconButton
          brightness: Brightness.dark,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    product.imageLink,
                    fit: BoxFit.cover, ),
                  // Image.asset(
                  //   'assets/' + 'ic_best_food_8' + ".jpeg",
                  // ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  elevation: 1,
                  margin: EdgeInsets.all(5),
                ),
                /*  Container(
                  height: 150,
                  child:FoodDetailsSlider(
                      slideImage1: "assets/images/bestfood/ic_best_food_8.jpeg",
                      slideImage2: "assets/images/bestfood/ic_best_food_9.jpeg",
                      slideImage3: "assets/images/bestfood/ic_best_food_10.jpeg"),
                ),*/

                FoodTitleWidget(
                    productName: product.name,
                    productPrice: product.price, ////"\$96.00",
                    productHost: "Q cafe"),
                // SizedBox(
                //   height: 15,
                // ),
                DetailContentMenu(product),
                //todo need to change
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       ' Choice of Flavour',
                      //       style: TextStyle(
                      //           fontSize: 18, fontWeight: FontWeight.bold),
                      //     ),
                      //     Spacer(),
                      //     Text(' 1 Required'),
                      //   ],
                      // ),



                      // RadioButton(
                      //   description: "1/2",
                      //   value: "1/2",
                      //   groupValue: _singleValue,
                      //   onChanged: (value) => setState(
                      //     () => _singleValue = value,
                      //   ),
                      //   activeColor: Colors.red,
                      // ),
                      // RadioButton(
                      //   description: "1",
                      //   value: "1",
                      //   groupValue: _singleValue,
                      //   onChanged: (value) => setState(
                      //     () => _singleValue = value,
                      //   ),
                      //   //textPosition: RadioButtonTextPosition.left,
                      //   activeColor: Colors.red,
                      // ),
                      // Container(
                      //     height: MediaQuery.of(context).size.height,
                      //     child: CheckBoxInListView()),


                      ChoiceOfFlavourView(product)
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // Card(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: <Widget>[
                //       Row(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Icon(Icons.payments_outlined),
                //           Text(' Payment methods'),
                //         ],
                //       ),
                //       RadioButton(
                //         description: "Personal",
                //         value: "Personal",
                //         groupValue: _singleValue,
                //         onChanged: (value) => setState(
                //               () => _singleValue = value,
                //         ),
                //         activeColor: Colors.red,
                //       ),
                //       RadioButton(
                //         description: "Official",
                //         value: "Official",
                //         groupValue: _singleValue,
                //         onChanged: (value) => setState(
                //               () => _singleValue = value,
                //         ),
                //         //textPosition: RadioButtonTextPosition.left,
                //         activeColor: Colors.red,
                //       ),
                //     ],
                //   ),
                // ),

                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Special instructions",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF3a3a3b),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Please let us know if you are allergic to anything or if we need to avoid anything.",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFa9a9a9),
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16, bottom: 16),
                          child: TextFormField(
                            minLines: 3,
                            maxLines: 5,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText: ' instructions',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )

                //  AddToCartMenu(this.product),

                // BottomMenu(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 55,
          margin: EdgeInsets.only(bottom: 16),
          child: AddToCartMenu(this.product),
        ));
  }
}

class FoodTitleWidget extends StatelessWidget {
  String productName;
  String productPrice;
  String productHost;

  FoodTitleWidget({
    Key key,
    @required this.productName,
    @required this.productPrice,
    @required this.productHost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              productName,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
            Text(
              productPrice,
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            Text(
              "by ",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w400),
            ),
            Text(
              productHost,
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1f1f1f),
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}

class AddToCartMenu extends StatefulWidget {
  final Product product;

  const AddToCartMenu(this.product);

  @override
  _AddToCartMenuState createState() => _AddToCartMenuState(this.product);
}

class _AddToCartMenuState extends State<AddToCartMenu> {
  _AddToCartMenuState(this.product);

  final Product product;
  var countItem = 1.obs;

  increment() => countItem++;

  decrement() => countItem--;

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    return Container(
      margin: EdgeInsets.only(left: 24, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildOutlineButton(
            icon: Icons.remove,
            press: () {
              if (countItem > 1) {
                setState(() {
                  decrement();
                });
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
            child: Text(
              // if our item is less  then 10 then  it shows 01 02 like that
              countItem.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                increment();
              });
            },
          ),
          Spacer(),
          InkWell(
            onTap: () {
              // Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 8, right: 8),
              width: 200.0,
              height: 45.0,
              decoration: new BoxDecoration(
                // color: Color(0xFFfd2c2c),
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: DefaultButton(
                  press: () {
                    double total;
                    var isExist = false;
                    cartController.cartItems.forEach((element) {
                      if (element.id == product.id) {
                        isExist = true;
                        product.count = countItem.toInt();
                      }
                    });
                    if (isExist) {
                      var itemcount = product.count = countItem.toInt();
                      product.count = countItem.toInt();
                      isExist = false;
                      total = double.parse(product.price) * itemcount;
                      product.totalproductPrice=total;
                      showToast("Cart Updated",
                          context: context);
                    } else {
                      var itemcount = product.count = countItem.toInt();
                      cartController.addToCart(product);
                      showToast("Added to Cart" + product.name,
                          context: context);
                      setState(() {
                        double l = itemcount.toDouble();
                        var i = double.parse(product.price);
                        total = i * l;
                        product.totalproductPrice=total;

                      });
                      showToast("Added to cart",
                          context: context);
                    }
                  },
                  text: 'Add To Cart',
                ),
                // Text(
                //   'Add To Cart',
                //   style: new TextStyle(
                //       fontSize: 18.0,
                //       color: Colors.white,
                //       fontWeight: FontWeight.w400),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailContentMenu extends StatelessWidget {
  const DetailContentMenu(this.product);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        product.description,
        style: TextStyle(
            fontSize: 14.0,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
            height: 1.50),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

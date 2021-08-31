import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/models/product.dart';
import 'package:sq_cafe_user_app/views/component/DefaultButton.dart';

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
    String _singleValue = "1/2";

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.business_center,
                  color: Color(0xFF3a3737),
                ),
                onPressed: () {
                  //  Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
                })
          ],
        ),
        body: Container(
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
                  'assets/' + 'ic_best_food_8' + ".jpeg",
                ),
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
                  productName: "Grilled Salmon",
                  productPrice: product.price, ////"\$96.00",
                  productHost: "Q cafe"),
              // SizedBox(
              //   height: 15,
              // ),
              DetailContentMenu(),
            //todo need to change
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(' Choice of Flavour',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text(' 1 Required'),

                    ],
                  ),
                  RadioButton(
                    description: "1/2",
                    value: "1/2",
                    groupValue: _singleValue,
                    onChanged: (value) => setState(
                          () => _singleValue = value,
                    ),
                    activeColor: Colors.red,
                  ),
                  RadioButton(
                    description: "1",
                    value: "1",
                    groupValue: _singleValue,
                    onChanged: (value) => setState(
                          () => _singleValue = value,
                    ),
                    //textPosition: RadioButtonTextPosition.left,
                    activeColor: Colors.red,
                  ),
                ],
              ),
            ),
              SizedBox(
                height: 15,
              ),
              AddToCartMenu(this.product),

              // BottomMenu(),
            ],
          ),
        ),
      ),
    );
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
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                decrement();
              });
            },
            icon: Icon(Icons.remove),
            color: Colors.black,
            iconSize: 30,
          ),
          Text(
            '$countItem',
            style: new TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                increment();
              });
            },
            icon: Icon(Icons.add),
            color: Color(0xFFfd2c2c),
            iconSize: 30,
          ),
          InkWell(
            onTap: () {
              // Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
            },
            child: Container(
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
                      showToast("Cart Updated" + total.toString(),
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
                      });
                      showToast("Cart Added" + total.toString(),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.',
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

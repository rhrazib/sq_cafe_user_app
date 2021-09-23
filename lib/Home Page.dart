import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/views/drawer/NavigationDrawer.dart';

import 'HomeCard.dart';
import 'HomeSnacksCard.dart';
import 'Login Page.dart';
import 'OrderGridView.dart';
import 'controllers/cart_controller.dart';
import 'rnd/Search.dart';
import 'rnd/SearchTest.dart';
import 'rnd/new rnd/FoodGroceriesAvailabilityView.dart';
import 'rnd/new rnd/PopularCategoriesView.dart';
import 'rnd/new rnd/app_colors.dart';
import 'rnd/voucher/Voucher.dart';
import 'views/drawer/DrawerMenu.dart';
import 'views/orderdetails/OrderDetailsBody.dart';
import 'views/orderdetails/OrderDetailsScreen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController inputController = new TextEditingController();
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        //resizeToAvoidBottomPadding: true,
        body: Scaffold(
          appBar:
          AppBar(
            backgroundColor: swiggyOrange,
            title: Text("Home"),
            actions: [
              PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: InkWell(
    onTap: () {
      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailsScreen(),
                    ),
                  );


    },
                          child: Text("History")

                      ),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: InkWell(
                          onTap: (){
                            Get.offAll(LoginPage());
                            final cartController = Get.put(CartController());
                            cartController.cartItems.value=[];//.value.clear();
                          },
                          child: Text("Logout")),
                      value: 2,
                    )
                  ]
              )
            ],
          ),

          // AppBar(
          //   title: Text("Home"),
          //   actions: <Widget>[
          //     // IconButton(
          //     //   icon: Icon(Icons.comment),
          //     //   tooltip: 'Comment Icon',
          //     //   onPressed: () {},
          //     // ), //IconButton
          //     IconButton(
          //       icon: Icon(Icons.settings),
          //       tooltip: 'Setting Icon',
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => OrderDetailsScreen(),
          //           ),
          //         );
          //       },
          //     ), //IconButton
          //   ],
          //   //<Widget>[]
          //   backgroundColor: swiggyOrange,
          //   //Colors.red.shade700,
          //   elevation: 50.0,
          //   leading: IconButton(
          //       icon: Icon(Icons.menu),
          //       tooltip: 'Menu Icon',
          //       onPressed: () => Scaffold.of(context).openEndDrawer()),
          //   //IconButton
          //   brightness: Brightness.dark,
          // ),
          drawer: NavigationDrawer(), //DrawerMenu(),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Column(
                children: <Widget>[
                  // new Container(//todo its serach bar for home page
                  //   margin: EdgeInsets.only(top: 10),
                  //   padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                  //   decoration: BoxDecoration(
                  //     color: Colors.black38.withAlpha(10),
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(20),
                  //     ),
                  //   ),
                  //   child: Expanded(
                  //     child: Row(
                  //       children: <Widget>[
                  //         Expanded(
                  //           child:TextFormField(
                  //       controller:inputController,
                  //             decoration: InputDecoration(
                  //               hintText: "Search Your feed",
                  //               hintStyle: TextStyle(
                  //                 color: Colors.black.withAlpha(120),
                  //               ),
                  //               border: InputBorder.none,
                  //             ),
                  //               onTap: () {
                  //                 Navigator.of(context).push(MaterialPageRoute<void>(
                  //                   builder: (BuildContext context) {
                  //                     return AdvancedSearch(inputController.text);
                  //                   },));                        }
                  //           )
                  //         ),
                  //         InkWell(
                  //           child: Icon(
                  //             Icons.search,
                  //             color: Colors.black.withAlpha(120),
                  //           ),
                  //             onTap: () {
                  //               Navigator.of(context).push(MaterialPageRoute<void>(
                  //                 builder: (BuildContext context) {
                  //                   return AdvancedSearch(inputController.text);
                  //                 },));                        }
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  FoodGroceriesAvailabilityView(),
                  // InkWell(
                  //   child:FoodGroceriesAvailabilityView(), //HomeCard(),
                  //   onTap:(){
                  //     Navigator.of(context).push(MaterialPageRoute<void>(
                  //         builder: (BuildContext context) {
                  //           return Voucher();
                  //         },));
                  //     // Navigator.push(
                  //     //     context,
                  //     //     MaterialPageRoute(
                  //     //         builder: (context) =>
                  //     //             Voucher()));
                  //   },
                  // ),
                  // HomeCard(),
                  // HomeSnacksCard(),//todo new
                  // Expanded(child:
                  // OrderGridView()
                  //
                  // ),
                ],
              ),
            ),
          ),
// bottomNavigationBar:new  Container(
// height: 108,
//   child:Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
// Text("Your Favourite Deals",style: TextStyle(fontWeight: FontWeight.bold),),
//       Expanded(child: OrderGridView()),
//     ],
//   )
// ),
//       bottomNavigationBar:new Container(
//         height: 183,
//         child: PopularCategoriesView(),
//       )
        ));
  }
}

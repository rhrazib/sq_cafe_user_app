import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/product_controller.dart';
import 'package:sq_cafe_user_app/rnd/voucher/Voucher.dart';
import 'package:sq_cafe_user_app/views/orderdetails/constant.dart';

import '../SearchHome.dart';
import '../SearchTest.dart';
import 'GenieGroceryCardView.dart';
import 'PopularCategoriesView.dart';
import 'Responsive.dart';
import 'UIHelper.dart';
import 'app_colors.dart';
import 'searchbar/SearchBarWidget.dart';
class FoodGroceriesAvailabilityView extends StatefulWidget {

  @override
  _FoodGroceriesAvailabilityViewState createState() => _FoodGroceriesAvailabilityViewState();
}

class _FoodGroceriesAvailabilityViewState extends State<FoodGroceriesAvailabilityView> {
  // @override
  // void initState() {
  // setUser(context);
  // super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    TextEditingController inputController = new TextEditingController();
    final ProductController productController = Get.put(ProductController());
    final isTabletDesktop = Responsive.isTabletDesktop(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Column(
        children: <Widget>[
          if (!isTabletDesktop)
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: Container(
                    width: 10.0,
                    height: 140.0,
                    color: swiggyOrange,
                  ),
                ),
                UIHelper.horizontalSpaceMedium(),
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Good Morning, Mr '+Constant.name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Text(
                        'Cafe service (Sat -thurs)-9:00 am to 6:00 pm',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontSize: 16.0,
                          color: Colors.grey[800],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          InkWell(
            onTap: () {

              showToast("Not Implemented",context: context);
              // Navigator.of(context).push(MaterialPageRoute<void>(
              //   builder: (BuildContext context) {
              //     return SearchHomePage();//AdvancedSearch(inputController.text);
              //   },));


              // Navigator.of(context).push(SearchModal());
            },
            child: new Container(// //todo searchbar
              height: 50,
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.black38.withAlpha(10),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
           //   child: Expanded(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 12, left: 0),
                      child: Icon(Icons.search, color:  Colors.grey),
                    ),
                  //  Expanded(
                       // child:
                        Text(
                          "Search in Q Cafe",style: TextStyle(
                            color: Colors.grey
                        ),
                        )
                   // ),
                  ],
                ),
             // ),
            ),
          ),
          // SearchBarWidget(),
// //todo search end

          if (!isTabletDesktop) UIHelper.verticalSpaceLarge(),
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: InkWell(
                  child: Container(
                    height: 180.0,
                    color: swiggyOrange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: FractionallySizedBox(
                            widthFactor: 0.7,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Tea/Coffee',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(color: Colors.white),
                                  ),
                                  UIHelper.verticalSpaceExtraSmall(),
                                  Text(
                                    'Order now on your favourites!',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 45.0,
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          color: darkOrange,
                          child: Row(
                            children: <Widget>[
                              Text(
                                'View all',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                              UIHelper.horizontalSpaceSmall(),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 18.0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: isTabletDesktop
                      ? () {}
                      : () {
                    productController.tabInitialIndex=0;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Voucher(),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: -10.0,
                right: -10.0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/teacoffee.jpeg',
                    width: 110.0,
                    height: 110.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GenieGroceryCardView(
                title: 'Snacks',
                subtitle: 'Anything you need,\ndelivered',
                image: 'assets/images/images.jpeg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                  productController.tabInitialIndex=1;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Voucher(),
                    ),
                  );


                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => GenieScreen(),
                  //   ),
                  // );
                },
              ),
              GenieGroceryCardView(
                title: 'Bevarage',
                subtitle: 'Esentials delivered\nin 20 Min',
                image: 'assets/images/coca-cola-products.jpeg',
                onTap: isTabletDesktop
                    ? () {}
                    : () {
                  productController.tabInitialIndex=2;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Voucher(),
                    ),
                  );
                },
              ),
              // GenieGroceryCardView(
              //   title: 'Meat',
              //   subtitle: 'Fesh meat\ndelivered safe',
              //   image: 'assets/images/food6.jpg',
              //   onTap: isTabletDesktop
              //       ? () {}
              //       : () {
              //     // Navigator.push(
              //     //   context,
              //     //   MaterialPageRoute(
              //     //     builder: (context) => MeatScreen(),
              //     //   ),
              //     // );
              //   },
              // ),
            ],
          ),
          // PopularCategoriesView() todo bottom bar




        ],
      ),
    );
  }
  // void setUser(context) async {
  //   ///SHare String , int , bool, double
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   var user= pref.getString('user');
  //   if(user=="razib"){
  //     name="Razib";
  //   }
  //   else if(user=="rokibul"){
  //     name="Rokibul";
  //
  //   }
  //
  // }
}



// class FoodGroceriesAvailabilityView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController inputController = new TextEditingController();
//     final ProductController productController = Get.put(ProductController());
//
//     final isTabletDesktop = Responsive.isTabletDesktop(context);
//
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
//       child: Column(
//         children: <Widget>[
//           if (!isTabletDesktop)
//             Row(
//               children: <Widget>[
//                 ClipRRect(
//                   borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(8.0),
//                     bottomRight: Radius.circular(8.0),
//                   ),
//                   child: Container(
//                     width: 10.0,
//                     height: 140.0,
//                     color: swiggyOrange,
//                   ),
//                 ),
//                 UIHelper.horizontalSpaceMedium(),
//                 Flexible(
//                   child: Column(
//                     children: <Widget>[
//                       Text(
//                         'Good Morning, Mr Rokibul',
//                         style: Theme.of(context).textTheme.headline6,
//                       ),
//                       UIHelper.verticalSpaceSmall(),
//                       Text(
//                         'Cafe service (Sat -thurs)-9:00 am to 6:00 pm',
//                         textAlign: TextAlign.center,
//                         style: Theme.of(context).textTheme.bodyText1.copyWith(
//                               fontSize: 16.0,
//                               color: Colors.grey[800],
//                             ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(MaterialPageRoute<void>(
//                 builder: (BuildContext context) {
//                   return SearchHomePage();//AdvancedSearch(inputController.text);
//                 },));
//               // Navigator.of(context).push(SearchModal());
//             },
//              child: new Container(// //todo searchbar
//                height: 50,
//               margin: EdgeInsets.only(top: 10),
//               padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
//               decoration: BoxDecoration(
//                 color: Colors.black38.withAlpha(10),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(5),
//                 ),
//               ),
//               child: Expanded(
//                 child: Row(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(right: 12, left: 0),
//                       child: Icon(Icons.search, color:  Colors.grey),
//                     ),
//                     Expanded(
//                         child:Text(
//                             "Search in Q Cafe",style: TextStyle(
//                           color: Colors.grey
//                         ),
//                         )
//                     ),
//                   ],
//                 ),
//               ),
//           ),
//            ),
//          // SearchBarWidget(),
// // //todo search end
//
//           if (!isTabletDesktop) UIHelper.verticalSpaceLarge(),
//           Stack(
//             children: <Widget>[
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10.0),
//                 child: InkWell(
//                   child: Container(
//                     height: 180.0,
//                     color: swiggyOrange,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: <Widget>[
//                         Align(
//                           alignment: Alignment.topLeft,
//                           child: FractionallySizedBox(
//                             widthFactor: 0.7,
//                             child: Padding(
//                               padding: const EdgeInsets.all(15.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   Text(
//                                     'Tea/Coffee',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .headline6
//                                         .copyWith(color: Colors.white),
//                                   ),
//                                   UIHelper.verticalSpaceExtraSmall(),
//                                   Text(
//                                     'Order now on your favourites!',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .bodyText1
//                                         .copyWith(color: Colors.white),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Spacer(),
//                         Container(
//                           height: 45.0,
//                           padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                           color: darkOrange,
//                           child: Row(
//                             children: <Widget>[
//                               Text(
//                                 'View all',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .bodyText1
//                                     .copyWith(
//                                         color: Colors.white, fontSize: 18.0),
//                               ),
//                               UIHelper.horizontalSpaceSmall(),
//                               Icon(
//                                 Icons.arrow_forward,
//                                 color: Colors.white,
//                                 size: 18.0,
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   onTap: isTabletDesktop
//                       ? () {}
//                       : () {
//                     productController.tabInitialIndex=0;
//
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Voucher(),
//                             ),
//                           );
//                         },
//                 ),
//               ),
//               Positioned(
//                 top: -10.0,
//                 right: -10.0,
//                 child: ClipOval(
//                   child: Image.asset(
//                     'assets/images/teacoffee.jpeg',
//                     width: 110.0,
//                     height: 110.0,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           UIHelper.verticalSpaceMedium(),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               GenieGroceryCardView(
//                 title: 'Snacks',
//                 subtitle: 'Anything you need,\ndelivered',
//                 image: 'assets/images/images.jpeg',
//                 onTap: isTabletDesktop
//                     ? () {}
//                     : () {
//                   productController.tabInitialIndex=1;
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => Voucher(),
//                     ),
//                   );
//
//
//                   // Navigator.push(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //     builder: (context) => GenieScreen(),
//                         //   ),
//                         // );
//                       },
//               ),
//               GenieGroceryCardView(
//                 title: 'Bevarage',
//                 subtitle: 'Esentials delivered\nin 20 Min',
//                 image: 'assets/images/coca-cola-products.jpeg',
//                 onTap: isTabletDesktop
//                     ? () {}
//                     : () {
//                   productController.tabInitialIndex=2;
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => Voucher(),
//                     ),
//                   );
//                       },
//               ),
//               // GenieGroceryCardView(
//               //   title: 'Meat',
//               //   subtitle: 'Fesh meat\ndelivered safe',
//               //   image: 'assets/images/food6.jpg',
//               //   onTap: isTabletDesktop
//               //       ? () {}
//               //       : () {
//               //     // Navigator.push(
//               //     //   context,
//               //     //   MaterialPageRoute(
//               //     //     builder: (context) => MeatScreen(),
//               //     //   ),
//               //     // );
//               //   },
//               // ),
//             ],
//           ),
//          // PopularCategoriesView() todo bottom bar
//
//
//
//
//         ],
//       ),
//     );
//   }
// }

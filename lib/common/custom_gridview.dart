import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sq_cafe_user_app/rnd/voucher/VoucherDetails.dart';
import 'package:sq_cafe_user_app/views/component/DefaultButton.dart';

class ProductModel {
  int id;
  String pName;
  String pDetails;
  String pRice;
  double rating;
  String ratingCount;
  String pImage;

  ProductModel(this.id, this.pName, this.pDetails, this.pRice, this.rating,
      this.ratingCount, this.pImage);
}

class CustomGridView extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CustomGridView> {
  List<ProductModel> pModel = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 10; i++) {
      pModel.add(new ProductModel(
          1,
          "Computer",
          "Order From: Mr Rokibul",
          "Delivery Location: Room No 5",
          4,
          "144",
          "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
      // pModel.add(new ProductModel(
      //     1,
      //     "Android",
      //     "Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
      //     "5003",
      //     5,
      //     "144",
      //     "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(12.0),
          child: GridView.builder(

              itemCount: pModel.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 0.0,

              ),
              itemBuilder: (context, index) {
                return Card(
                  //elevation: 1,
                  color: Colors.green.shade50,
                  margin: const EdgeInsets.all(8),
                  // child: IntrinsicHeight(
                  child: Scaffold(
                    body: Container(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          // Image.network(
                          //   "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
                          //   height: 70,
                          //   width: double.infinity,
                          // ),
                          Container(
                              //  child: Align(
                              //  alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(8),
                              child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    pModel.elementAt(index).pDetails,
                                    //overflow: TextOverflow.ellipsis,
                                   // maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12,fontWeight: FontWeight.bold),
                                  ),

                      // RichText(
                      //   textAlign: TextAlign.center,
                      //   text: TextSpan(children: <TextSpan>[
                      //     TextSpan(
                      //         text: pModel.elementAt(index).pRice,
                      //         style: TextStyle(color: Colors.black87)),
                      //     TextSpan(
                      //         text: "Terms and Conditions",
                      //         style: TextStyle(
                      //             color: Colors.deepPurple,
                      //             fontWeight: FontWeight.bold)),
                      //   ]),),
                                  Text(pModel.elementAt(index).pRice,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red.shade900)),
                                  // Row(
                                  //   children: [
                                  //
                                  //     Text("1 Green Tea",
                                  //         style: TextStyle(
                                  //             fontSize: 10,
                                  //             fontWeight: FontWeight.bold,
                                  //             color: Colors.grey)),
                                  //   ],
                                  // )
                                ],
                              )),

                          SingleChildScrollView(
                            child: Column(
                              children: [
                                ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 4,
                                    itemBuilder: (context, i) {
                                      return Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(" 1 Green Tea ",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey)),
                                              Image.asset(
                                                "assets/images/suger.jpeg",
                                                height: 20,
                                                width: 20,
                                              ),
                                              Text(" 2",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                          Divider()
                                        ],
                                      );

                                      // Column(
                                      //   //crossAxisAlignment: CrossAxisAlignment.start,
                                      //   children: [
                                      //
                                      //   ],
                                      // )
                                    }),
                              ],
                              // height: 100,
                              //  child: Align(
                              //  alignment: Alignment.centerLeft,
                             // padding: EdgeInsets.all(8),
                        //    child:
                              // Column(
                              //   //crossAxisAlignment: CrossAxisAlignment.start,
                              //   children: [
                              //
                              //   ],
                              // )
                            ),
                          ),

                          //  ),
                        ],
                      ),
                    ),
                    bottomNavigationBar: CheckoutBottomBar(), // Text("TTTT"),
                  ),
                  //  ),
                );
              })),
      // bottomNavigationBar: Text("TTTT"),

      // Row(
      //   children: [
      //
      //     RawMaterialButton(
      //       fillColor: Colors.green,
      //       splashColor:
      //       Colors.greenAccent,
      //       child: Container(
      //         alignment: Alignment.center,
      //         child: Text(
      //           "Detail",
      //           style: TextStyle(
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       onPressed: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (context) =>
      //                     VoucherDetails()));
      //       },
      //       shape: const StadiumBorder(),
      //     ),
      //
      //     Spacer(),
      //
      //
      //     RawMaterialButton(
      //       fillColor: Colors.green,
      //       splashColor:
      //       Colors.greenAccent,
      //       child: Container(
      //         alignment: Alignment.center,
      //         child: Text(
      //           "Detail",
      //           style: TextStyle(
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       onPressed: () {
      //         Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //                 builder: (context) =>
      //                     VoucherDetails()));
      //       },
      //       shape: const StadiumBorder(),
      //     ),
      //   ],
      // ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('$index'),
            );
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            width: double.infinity,
            child: FlatButton(
              child: Text('FlatButton', style: TextStyle(fontSize: 24)),
              onPressed: () => {},
              color: Colors.green,
              textColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class CheckoutBottomBar extends StatefulWidget {
  //const CheckoutBottomBar({Key key}) : super(key: key);
  final formkey = GlobalKey<FormState>();

  @override
  _CheckoutBottomBarState createState() => _CheckoutBottomBarState();
}

class _CheckoutBottomBarState extends State<CheckoutBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(
      //   vertical: 15,
      //   horizontal: 30,
      // ),
      // height: 174,
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(30),
      //     topRight: Radius.circular(30),
      //   ),
      //   boxShadow: [
      //     BoxShadow(
      //       offset: Offset(0, -15),
      //       blurRadius: 20,
      //       color: Color(0xFFDADADA).withOpacity(0.15),
      //     )
      //   ],
      // ),
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 8,right: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  //  Expanded(
                  //flex: 1,
                  // child:
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ),
                  // ),
                  Spacer(),
                  //Expanded(
                  //flex: 1,
                  //child:
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Confirm', style: TextStyle(fontSize: 11)),
                    ),
                  ),
                  // )
                ],
              ),
              // SizedBox(height: 20),
              // DefaultButton(
              //   text: "Place Order",
              //   press: () {
              //   },
              //),
            ],
          ),
        ),
      ),
    );
  }
}
//
// Align(
// alignment: Alignment.bottomCenter,
//
// child: Row(
// children: [
//
// RawMaterialButton(
// fillColor: Colors.green,
// splashColor:
// Colors.greenAccent,
// child: Container(
// alignment: Alignment.center,
// child: Text(
// "Detail",
// style: TextStyle(
// color: Colors.white,
// ),
// ),
// ),
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) =>
// VoucherDetails()));
// },
// shape: const StadiumBorder(),
// ),
//
// Spacer(),
//
//
// RawMaterialButton(
// fillColor: Colors.green,
// splashColor:
// Colors.greenAccent,
// child: Container(
// alignment: Alignment.center,
// child: Text(
// "Detail",
// style: TextStyle(
// color: Colors.white,
// ),
// ),
// ),
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) =>
// VoucherDetails()));
// },
// shape: const StadiumBorder(),
// ),
// ],
// ),
// ),

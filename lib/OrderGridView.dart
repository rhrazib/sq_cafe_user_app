import 'package:flutter/material.dart';

import 'CusConInsideVerRow.dart';

class OrderGridView extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<OrderGridView> {
  List<ProductModel> pModel = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pModel.add(new ProductModel(
        1,
        "Green Tea",
        "A computer is a machine that can store and process information. Most computers rely on a binary system that uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information.",
        "5100",
        4,
        "144",
        "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
    pModel.add(new ProductModel(
        1,
        "Black Tea",
        "Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
        "5003",
        5,
        "144",
        "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
    pModel.add(new ProductModel(
        1,
        "Black Coffee",
        "Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
        "5003",
        5,
        "144",
        "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
    pModel.add(new ProductModel(
        1,
        " Coca-Cola",
        "Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
        "5003",
        5,
        "144",
        "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
    pModel.add(new ProductModel(
        1,
        " Green Tea",
        "Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
        "5003",
        5,
        "144",
        "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
    pModel.add(new ProductModel(
        1,
        " Black Coffee",
        "Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
        "5003",
        5,
        "144",
        "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
  }

  @override
  Widget build(BuildContext context) {
    return

      Container(
        // padding: EdgeInsets.all(12.0),
          child: ListView.builder(
              itemCount: pModel.length,
              scrollDirection: Axis.horizontal,              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 4, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.only(

                          topRight: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0))),
                  // height: 70,
                  child: Expanded(
                    child: CusConInsideVerRow(
                      text: pModel.elementAt(index).pName,
                      width: 100.0,
                      iconData: Icons.icecream,
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute<void>(
                        //     builder: (BuildContext context) {
                        //       return Scaffold(
                        //         appBar: AppBar(
                        //           automaticallyImplyLeading: false,
                        //           // Used for removing back buttoon.
                        //           backgroundColor: Colors.grey.shade50,
                        //           title: CustomAppBar(title: pModel.elementAt(index).pName,),
                        //         ),
                        //         body: Container(
                        //           alignment: Alignment.topLeft,
                        //           child: CustomOrderStateUi(),
                        //         ),
                        //       );
                        //     }));
                      },
                    ),
                  ),
                );
              }));
  }
}
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
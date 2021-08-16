import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'CustomAppBar.dart';
import 'custom_container_inside_vertical_row.dart';
import 'custom_order_status_ui.dart';

class ProductModel {
  int id;
  String? pName;
  String? pDetails;
  String? pRice;
  double? rating;
  String? ratingCount;
  String? pImage;

  ProductModel(this.id, this.pName, this.pDetails, this.pRice, this.rating,
      this.ratingCount, this.pImage);
}

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
          "To Pay",
          "A computer is a machine that can store and process information. Most computers rely on a binary system that uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information.",
          "5100",
          4,
          "144",
          "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
      pModel.add(new ProductModel(
          1,
          "To Ship",
          "Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
          "5003",
          5,
          "144",
          "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
    pModel.add(new ProductModel(
        1,
        " To Receive",
        "Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
        "5003",
        5,
        "144",
        "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
    pModel.add(new ProductModel(
        1,
        " To Review",
        "Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
        "5003",
        5,
        "144",
        "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
    pModel.add(new ProductModel(
        1,
        " My Returns",
        "Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
        "5003",
        5,
        "144",
        "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
    pModel.add(new ProductModel(
        1,
        " My Cancellations",
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
        child: GridView.builder(
            itemCount: pModel.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(top: 8),
               // height: 70,
                child: Expanded(
                  child: CusConInsideVerRow(
                    text: pModel.elementAt(index).pName,
                    width: 100.0,
                    iconData: Icons.car_rental,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            automaticallyImplyLeading: false,
                            // Used for removing back buttoon.
                            backgroundColor: Colors.grey.shade50,
                            title: CustomAppBar(title: pModel.elementAt(index).pName,),
                          ),
                          body: Container(
                            alignment: Alignment.topLeft,
                            child: CustomOrderStateUi(),
                          ),
                        );
                      }));
                    },
                  ),
                ),
              );
            }));
  }
}

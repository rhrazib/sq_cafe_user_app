import 'package:flutter/material.dart';

class CustomTrackPackage extends StatelessWidget {
  final  image;
  const CustomTrackPackage({this.image});

  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.all(16),
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Track Package",
                style: TextStyle(fontSize: 13),
              )),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                //borderRadius: BorderRadius.horizontal(right: 10),
                child: Image.network(image,  width: 60.0,
    height: 60.0,
    fit: BoxFit.fill,)

                // Image.asset(
                //   'assets/instragram.jpeg',
                //   width: 60.0,
                //   height: 60.0,
                //   fit: BoxFit.fill,
                // ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " Delivered>",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 13),
                          ),
                          Text(
                            "12:09 Jun 08  ",
                            //textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.black, fontSize: 10),
                          ),
                          //   ),
                        ],
                      ),
                    ),
                    Text(
                      " Your package has been delivered.",
                      //textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black, fontSize: 11),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

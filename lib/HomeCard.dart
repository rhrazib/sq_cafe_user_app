import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Home Page.dart';
import 'rnd/voucher/Voucher.dart';

class HomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 1),
      child:
      InkWell(
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[

                Container(
                    margin: EdgeInsets.only( top:5.0,left: 5.0,right: 5.0,bottom: 5),
                    child:
                    InkWell(
                      child: Container(
                        width: double.infinity,
                        height: 148,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.only(

                                topRight: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0),
                                topLeft: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0))),
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Tea/Coffee",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(context,);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Voucher()));



                        // Navigator.of(context).push(MaterialPageRoute<void>(
                        //     builder: (BuildContext context) {
                        //       return Scaffold(
                        //         appBar: AppBar(
                        //           automaticallyImplyLeading: false,
                        //           // Used for removing back buttoon.
                        //           backgroundColor: Colors.red.shade700,
                        //           title: Text("Home"),
                        //           // title: CustomAppBar(title: pModel.elementAt(index).pName,),
                        //         ),
                        //         body: Container(
                        //           alignment: Alignment.topLeft,
                        //           child: HomePage(title: 'Home',),
                        //         ),
                        //       );
                        //     })

                       // );
                      },
                    )
                ),
              ],
            ),
          ],
        ),
        onTap:(){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Voucher()));
        },
      ),

      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: <Widget>[
      //     Column(
      //       children: <Widget>[
      //
      //         Container(
      //             margin: EdgeInsets.only( top:5.0,left: 5.0,right: 5.0,bottom: 5),
      //             child:
      //             InkWell(
      //               child: Container(
      //                 width: double.infinity,
      //                 height: 148,
      //                 decoration: BoxDecoration(
      //                     color: Colors.pink,
      //                     borderRadius: BorderRadius.only(
      //
      //                         topRight: Radius.circular(5.0),
      //                         bottomRight: Radius.circular(5.0),
      //                         topLeft: Radius.circular(5.0),
      //                         bottomLeft: Radius.circular(5.0))),
      //                 padding: EdgeInsets.all(12),
      //                 child: Text(
      //                   "Tea/Coffee",
      //                   textAlign: TextAlign.center,
      //                   style: TextStyle(fontSize: 16,
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.white),
      //                 ),
      //               ),
      //               onTap: () {
      //                // Navigator.push(context,);
      //                 Navigator.of(context).push(MaterialPageRoute<void>(
      //                     builder: (BuildContext context) {
      //                       return Scaffold(
      //                         appBar: AppBar(
      //                           automaticallyImplyLeading: false,
      //                           // Used for removing back buttoon.
      //                           backgroundColor: Colors.red.shade700,
      //                          title: Text("Home"),
      //                          // title: CustomAppBar(title: pModel.elementAt(index).pName,),
      //                         ),
      //                         body: Container(
      //                           alignment: Alignment.topLeft,
      //                           child: HomePage(title: 'Home',),
      //                         ),
      //                       );
      //                     }));
      //               },
      //             )
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
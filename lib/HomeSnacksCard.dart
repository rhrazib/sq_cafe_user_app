import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Home Page.dart';

class HomeSnacksCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 1),
      child: Row(
       // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[

                Container(
                    width:               double.infinity
                    ,
                    height: 196,
                    margin: EdgeInsets.only( top:5.0,left: 5.0,right: 5.0,bottom: 5),
                    child:
                    InkWell(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                         //   color: Color.fromRGBO(254, 210, 113, 900),
                            color:  Colors.amber.shade400,
                            borderRadius: BorderRadius.only(

                                topRight: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0),
                                topLeft: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0))),
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Snacks",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      onTap: () {
                       // Navigator.push(context,);
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  automaticallyImplyLeading: false,
                                  // Used for removing back buttoon.
                                  backgroundColor: Colors.red.shade700,
                                // title: Text("Home"),
                                 // title: CustomAppBar(title: pModel.elementAt(index).pName,),
                                ),
                                body: Container(
                                  alignment: Alignment.topLeft,
                                  child: HomePage(title: 'Home',),
                                ),
                              );
                            }));
                      },
                    )
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[

                Container(
                    width:               double.infinity
                    ,
                    height: 196,
                    margin: EdgeInsets.only( top:5.0,left: 5.0,right: 5.0,bottom: 5),
                    child:
                    InkWell(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.cyan.shade400,
                            borderRadius: BorderRadius.only(

                                topRight: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0),
                                topLeft: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0))),
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Bevarage",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(context,);
                        Navigator.of(context).push(MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  automaticallyImplyLeading: false,
                                  // Used for removing back buttoon.
                                  backgroundColor: Colors.red.shade700,
                                  title: Text("Home"),
                                  // title: CustomAppBar(title: pModel.elementAt(index).pName,),
                                ),
                                body: Container(
                                  alignment: Alignment.topLeft,
                                  child: HomePage(title: 'Home',),
                                ),
                              );
                            }));
                      },
                    )
                ),
              ],
            ),
          ),
          // Expanded(
          //   child: Container(
          //     width:               double.infinity
          //     ,
          //     height: 396,
          //     margin: EdgeInsets.only( top:5.0,left: 5.0,right: 5.0,bottom: 5),
          //
          //     child: Column(
          //       children: <Widget>[
          //
          //         Container(
          //
          //            // margin: EdgeInsets.only( top:5.0,left: 5.0,right: 5.0,bottom: 5),
          //             child:
          //             InkWell(
          //               child: Container(
          //                 width:               double.infinity
          //                 ,
          //                 height: 196,
          //                 decoration: BoxDecoration(
          //                     color: Colors.red.shade800,
          //                     borderRadius: BorderRadius.only(
          //
          //                         topRight: Radius.circular(5.0),
          //                         bottomRight: Radius.circular(5.0),
          //                         topLeft: Radius.circular(5.0),
          //                         bottomLeft: Radius.circular(5.0))),
          //                 padding: EdgeInsets.all(12),
          //                 child: Text(
          //                   "Tea",
          //                   textAlign: TextAlign.center,
          //                   style: TextStyle(fontSize: 16,
          //                       fontWeight: FontWeight.bold,
          //                       color: Colors.white),
          //                 ),
          //               ),
          //               onTap: () {
          //                 // Navigator.push(context,);
          //                 Navigator.of(context).push(MaterialPageRoute<void>(
          //                     builder: (BuildContext context) {
          //                       return Scaffold(
          //                         appBar: AppBar(
          //                           automaticallyImplyLeading: false,
          //                           // Used for removing back buttoon.
          //                           backgroundColor: Colors.red.shade700,
          //                           title: Text("Home"),
          //                           // title: CustomAppBar(title: pModel.elementAt(index).pName,),
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
          //         Container(
          //             padding: EdgeInsets.only( top:5.0),
          //             child:
          //             InkWell(
          //               child: Container(
          //                 width:               double.infinity
          //                 ,
          //                 height: 100,
          //                 decoration: BoxDecoration(
          //                     color: Colors.red.shade800,
          //                     borderRadius: BorderRadius.only(
          //
          //                         topRight: Radius.circular(5.0),
          //                         bottomRight: Radius.circular(5.0),
          //                         topLeft: Radius.circular(5.0),
          //                         bottomLeft: Radius.circular(5.0))),
          //                 padding: EdgeInsets.all(12),
          //                 child: Text(
          //                   "Tea",
          //                   textAlign: TextAlign.center,
          //                   style: TextStyle(fontSize: 16,
          //                       fontWeight: FontWeight.bold,
          //                       color: Colors.white),
          //                 ),
          //               ),
          //               onTap: () {
          //                 // Navigator.push(context,);
          //                 Navigator.of(context).push(MaterialPageRoute<void>(
          //                     builder: (BuildContext context) {
          //                       return Scaffold(
          //                         appBar: AppBar(
          //                           automaticallyImplyLeading: false,
          //                           // Used for removing back buttoon.
          //                           backgroundColor: Colors.red.shade700,
          //                           title: Text("Home"),
          //                           // title: CustomAppBar(title: pModel.elementAt(index).pName,),
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
          //   ),
          //
          // ),
        ],
      ),
    );
  }
}
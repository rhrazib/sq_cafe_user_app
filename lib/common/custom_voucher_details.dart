import 'package:flutter/material.dart';

import 'custom_gridview.dart';

class CustomVoucherDetails extends StatelessWidget {
  String amount;

  CustomVoucherDetails({ this.amount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     //   Expanded(
       //   child:
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 8),
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.only(left: 16, right: 16,),
                  elevation: 0,
                  color: Colors.yellow.shade50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 16, left: 8),
                          child: Text(
                            "Sookh",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        // child: Text(
                        //   " $amount% off",
                        //   style: TextStyle(
                        //       fontSize: 28, fontWeight: FontWeight.bold,color:Colors.red.shade900),
                        // ),
                       child: RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(text: " $amount% ",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.red.shade900)),
                                  WidgetSpan(child: Text('off',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.red.shade900))), // I've tried many widgets here
                                  //TextSpan(text: textB),
                                ])),
                      ),
                      Text(
                        "   Min. spend " r" $" "$amount",
                        style: TextStyle(fontSize: 10),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 8, bottom: 8),
                        margin: EdgeInsets.only(
                            left: 8, right: 8, top: 8),
                        width: double.infinity,
                        color: Colors.orange.shade200,
                        child: Text(
                          " Valid From 2021-06-12 2012-07-12 ",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                      Container(
                        color: Colors.transparent,

                        child: ExpansionTile(

                          leading: Icon(Icons.soap_outlined),
                          title: Text(
                            'Terms and Conditions',
                            style: TextStyle(fontSize: 12,color: Colors.red.shade900),
                          ),
                          children: <Widget>[
                            ListTile(title: Text('Sookh is an ecommerce site. Sookh is an ecommerce site',
                              style: TextStyle(fontSize: 12,color: Colors.red.shade900),)),
                            ListTile(
                              title: Text('Sookh is an ecommerce site. Change of mide not recommanded ',
                                style: TextStyle(fontSize: 12,color: Colors.red.shade900),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // Card(
                //   elevation: 0,
                //   margin: EdgeInsets.only(left: 16, right: 16),
                //   color: Colors.yellow.shade50,
                //   child: ExpansionTile(
                //     backgroundColor: Colors.orange.shade200,
                //     //leading: Icon(Icons.event),
                //     title: Text(
                //       'Terms and Conditions',
                //       style: TextStyle(fontSize: 12),
                //     ),
                //     children: <Widget>[
                //       ListTile(title: Text('Sookh loan is')),
                //       ListTile(
                //         title: Text('Sookh is very '),
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
          ),
      //  ),
        Expanded(child: CustomGridView())
      ],
    );
  }
}

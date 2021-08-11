
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeCard.dart';
import 'HomeSnacksCard.dart';
import 'OrderGridView.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.white,
      //resizeToAvoidBottomPadding: true,
      body: Scaffold(

      body:  SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 16.0),
          child: Column(
            children: <Widget>[
              // SizedBox(
              //   height: 290,
              // ),
              HomeCard(),
              HomeSnacksCard(),
              // Expanded(child:
              // OrderGridView()
              //
              // ),
            ],
          ),
        ),
      ),
bottomNavigationBar:new  Container(
height: 108,
  //width: double.infinity,

  child:Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
Text("Your Favourite Deals",style: TextStyle(fontWeight: FontWeight.bold),),
      Expanded(child: OrderGridView()),
    ],
  )

),
    )

          //  Body()


    );
  }
}
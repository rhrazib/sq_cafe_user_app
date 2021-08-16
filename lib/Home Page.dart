
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeCard.dart';
import 'HomeSnacksCard.dart';
import 'OrderGridView.dart';
import 'rnd/Search.dart';
import 'rnd/SearchTest.dart';
import 'rnd/voucher/Voucher.dart';

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
              //HomeScreenSearch(),
              // SizedBox(
              //   height: 290,
              // ),
          new GestureDetector(
          onTap: (){
        print("Container clicked");
        Navigator.of(context).push(MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return AdvancedSearch();
          },));
        },
            child:   new Container(
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.black38.withAlpha(10),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child:
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Search Your feed",
                        hintStyle: TextStyle(
                          color: Colors.black.withAlpha(120),
                        ),
                        border: InputBorder.none,
                      ),
                      // onChanged: (v) {
                      // },
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black.withAlpha(120),
                  )
                ],
              ),
            ),
        ),


              InkWell(
                child: HomeCard(),
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return Voucher();
                      },));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             Voucher()));
                },
              ),
             // HomeCard(),
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
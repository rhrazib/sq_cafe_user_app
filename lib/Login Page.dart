import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'LoginFormCard.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit( designSize: Size(750, 1334), builder: () {
      return new Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.white,
        //resizeToAvoidBottomPadding: true,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 80.0),
                  child:        Container(

                    width: 120,
                    padding: EdgeInsets.only(bottom: 1,top: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 15.0),
                              blurRadius: 15.0),
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, -10.0),
                              blurRadius: 10.0),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Image.asset("assets/logo.png",height: 70,width: 70,),
                                  Column(
                                    children: [
                                      Text("Cafe",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueGrey.shade600
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ],
                                  ),

                                ],
                              )

                          //  ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 290.h,
                    ),
                    FormCard(),
                  ],
                ),
              ),
            ),
            //  Body()
          ],
        ),
      );
    },);
  }
}
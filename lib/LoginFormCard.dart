import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 1),
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
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Text("SQ Cafe",
                    style: TextStyle(
                        fontSize: 40.w,
                        fontFamily: "Poppins-Bold"
                      // , letterSpacing: .6
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                child: Text("LOGIN TO YOUR ACCOUNT",
                    style: TextStyle(
                        fontFamily: "Poppins-Medium",
                        fontSize: 26.w)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0, bottom: 16),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                ),
              ),
              //SizedBox(height: 16,)
              Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child:
                  InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                          color: Colors.red.shade800,
                          borderRadius: BorderRadius.only(

                              topRight: Radius.circular(0.0),
                              bottomRight: Radius.circular(5.0),
                              topLeft: Radius.circular(0.0),
                              bottomLeft: Radius.circular(5.0))),
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                // Container(
                //   width: double.maxFinite,
                //   height: 100.h,
                //   decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //           colors: [Color., Color(0xFF6078ea)]),
                //       borderRadius: BorderRadius.only(
                //         bottomLeft: Radius.circular(6.0),
                //         bottomRight: Radius.circular(6.0),
                //       ),
                //       boxShadow: [
                //         BoxShadow(
                //             color: Color(0xFF6078ea).withOpacity(.3),
                //             offset: Offset(0.0, 8.0),
                //             blurRadius: 8.0)
                //       ]),
                //   child: Material(
                //     color: Colors.transparent,
                //     child: InkWell(
                //       onTap: () {
                //         // Navigator.push(
                //         //     context,
                //         //     PageTransition(type: PageTransitionType.fade, child: DashBoardPage()));
                //       },
                //       //onTap: ()  => debugPrint("LOGIN"),
                //
                //       child: Center(
                //         child: Text("LOGIN",
                //             style: TextStyle(
                //                 color: Colors.white,
                //                 fontFamily: "Poppins-Medium",
                //                 fontSize: 18,
                //                 letterSpacing: 1.0)),
                //       ),
                //     ),
                //   ),
                // )

              ),
            ],
          ),
        ],
      ),
    );
  }
}
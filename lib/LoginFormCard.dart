import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/LoginController.dart';
import 'Home Page.dart';
import 'rnd/new rnd/app_colors.dart';

class FormCard extends StatefulWidget {
  @override
  _FormCardState createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  final loginController = Get.put(LoginController());

  @override
  void initState() {
    // gotoHomeScreen(context);
    super.initState();
  }

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

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
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0, bottom: 32),
                child: Text("LOGIN TO YOUR ACCOUNT",
                    style:
                        TextStyle(fontFamily: "Poppins-Bold", fontSize: 30.w)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0, bottom: 16),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                ),
              ),
              //SizedBox(height: 16,)
              Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                          color: swiggyOrange,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(0.0),
                              bottomRight: Radius.circular(5.0),
                              topLeft: Radius.circular(0.0),
                              bottomLeft: Radius.circular(5.0))),
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    onTap: () async {
//setState(() {
                      if (emailController.text == "") {
                        showToast("email is empty", context: context);
                      } else if (passwordController.text == "") {
                        showToast("password is empty", context: context);
                      } else if (emailController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        String error = await loginController.login(
                            email: emailController.text,
                            password: passwordController.text,
                            deviceId: "1234",
                            context: context);

                        if (error != "") {
                          Get.defaultDialog(title: "Oop!", middleText: error);
                        }
                      }

                      // else if(emailController.text=="razib" && passwordController.text=="1234"){
                      //   var user ="razib";
                      //   // gotoHomeScreen(context);
                      //   Constant.name="Razib";
                      //   setUser(context, user);
                      //
                      //   Navigator.of(context).push(MaterialPageRoute<void>(
                      //       builder: (BuildContext context) {
                      //         return Scaffold(
                      //           body: Container(
                      //             alignment: Alignment.topLeft,
                      //             child: HomePage(
                      //               title: 'Home',
                      //             ),
                      //           ),
                      //         );
                      //       })
                      //
                      //
                      //  );
                      //
                      // }
//   else if(emailController.text=="rokibul" && passwordController.text=="1234"){
// var user ="rokibul";
//     // gotoHomeScreen(context);
// Constant.name="Rokibul";
//
// setUser(context, user);
//     Navigator.of(context).push(MaterialPageRoute<void>(
//         builder: (BuildContext context) {
//           return Scaffold(
//             body: Container(
//               alignment: Alignment.topLeft,
//               child: HomePage(
//                 title: 'Home',
//               ),
//             ),
//           );
//         })
//
//
//     );
//
//   }
//                       else {
//                         showToast("email or password not match",
//                             context: context);
//                       }
//}

//);
                      // Navigator.push(context,);
                    },
                  )),
            ],
          ),
        ],
      ),
    );
  }

  // void gotoHomeScreen(context) async {
  //   ///SHare String , int , bool, double
  //   //SharedPreferences pref = await SharedPreferences.getInstance();
  //   //await pref.setBool('seen', true);
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => HomePage(),
  //     ),
  //   );
  // }

  // void setUser(context, var user) async {
  //   ///SHare String , int , bool, double
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   await pref.setString('user', user);
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => HomePage(),
  //     ),
  //   );
  //
  // }
}

// class FormCard extends StatelessWidget {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       width: double.infinity,
//       padding: EdgeInsets.only(bottom: 1),
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(8.0),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.black12,
//                 offset: Offset(0.0, 15.0),
//                 blurRadius: 15.0),
//             BoxShadow(
//                 color: Colors.black12,
//                 offset: Offset(0.0, -10.0),
//                 blurRadius: 10.0),
//           ]),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Column(
//             children: <Widget>[
//               Padding(
//                 padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0,bottom: 32),
//                 child: Text("LOGIN TO YOUR ACCOUNT",
//                     style:
//                         TextStyle(fontFamily: "Poppins-Bold", fontSize: 30.w)),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
//                 child: TextField(
//                   controller: emailController,
//                   decoration: InputDecoration(
//                       hintText: "Email",
//                       hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(
//                     left: 16.0, right: 16.0, top: 16.0, bottom: 16),
//                 child: TextField(
//                   controller: passwordController,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                       hintText: "Password",
//                       hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
//                 ),
//               ),
//               //SizedBox(height: 16,)
//               Padding(
//                   padding: EdgeInsets.only(top: 16.0),
//                   child: InkWell(
//                     child: Container(
//                       width: double.infinity,
//                       height: 48,
//                       decoration: BoxDecoration(
//                           color: Colors.red.shade800,
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(0.0),
//                               bottomRight: Radius.circular(5.0),
//                               topLeft: Radius.circular(0.0),
//                               bottomLeft: Radius.circular(5.0))),
//                       padding: EdgeInsets.all(12),
//                       child: Text(
//                         "Login",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//                     ),
//                     onTap: () {
//
//                       // Navigator.push(context,);
//                       Navigator.of(context).push(MaterialPageRoute<void>(
//                           builder: (BuildContext context) {
//                         return Scaffold(
//
//                           // appBar: AppBar(
//                           //   automaticallyImplyLeading: false,
//                           //   // Used for removing back buttoon.
//                           //   backgroundColor: Colors.red.shade700,
//                           // //  title: Text("Home"),
//                           //
//                           //   // title: CustomAppBar(title: pModel.elementAt(index).pName,),
//                           // ),
//                           body: Container(
//                             alignment: Alignment.topLeft,
//                             child: HomePage(
//                               title: 'Home',
//
//                             ),
//
//                           ),
//
//                         );
//                       }));
//                     },
//                   )),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

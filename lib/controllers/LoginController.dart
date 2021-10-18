
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/services/remote_services.dart';
import 'package:sq_cafe_user_app/views/login/Model/LoginResp.dart';
import 'package:sq_cafe_user_app/views/orderdetails/constant.dart';

import '../Home Page.dart';

class LoginController extends GetxController {
 // var loginProcess = false.obs;
  var error = "";
  var loginRes = LoginResp();
  var isLoading = true.obs;


  @override
  void onInit() {
    // fetchProducts();
  //  ReadJsonData();
    super.onInit();
  }

  Future<String> login({String email, String password,String deviceId, BuildContext context}) async {
    error = "";
    try {
      isLoading(true);
     // loginProcess(true);
      var loginResp = await RemoteServices.login(email: email, password: password,deviceId: "1234");
      if (LoginResp !=null) {
        loginRes=loginResp;
        if(loginRes.isSuccess){
          Constant.name=loginRes.name;
          Constant.userID=loginRes.userId;
          Constant.userType=loginRes.user_type;

          //final prefs = await SharedPreferences.getInstance();
         // prefs.setString("user_type", loginResp.user_type);
          Navigator.of(context).push(MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  body: Container(
                    alignment: Alignment.topLeft,
                    child: HomePage(
                      title: 'Home',
                    ),
                  ),
                );
              }));
        }else{
          showToast("Invalid email or password, try again",context: context);
        }
      } else {
        showToast("Some error occured, try again",context: context);
      }
    } finally {
     // loginProcess(false);
      isLoading(false);

    }
    return error;
  }
}
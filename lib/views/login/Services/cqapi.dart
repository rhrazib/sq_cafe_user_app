import 'dart:convert';

import 'package:sq_cafe_user_app/views/login/Model/ErrorResp.dart';
import 'package:sq_cafe_user_app/views/login/Model/LoginRequest.dart';
import 'package:sq_cafe_user_app/views/login/Model/LoginResp.dart';
import 'package:http/http.dart' as http;

class CQAPI {
  static var client = http.Client();
  static var _baseURL = "http://10.12.13.164:8032/api";

  // static Future<List> refreshToken({String token}) async {
  //   var response =
  //   await client.post(Uri.parse('$_baseURL/auth/refresh'));
  //   // await client.post('$_baseURL/auth/refresh', headers: <String, String>{
  //   //   'Authorization': 'Bearer $token',
  //   // });
  //
  //   if (response.statusCode == 200) {
  //     var json = response.body;
  //     //status is success but not excepted result
  //     if (json.contains("access_token") == false) {
  //       return ["", "Unknown Error"];
  //     }
  //     var loginRes = loginRespFromJson(json);
  //     if (loginRes != null) {
  //       return [loginRes.accessToken, ""];
  //     } else {
  //       return ["", "Unknown Error"];
  //     }
  //   } else {
  //     var json = response.body;
  //     var errorResp = errorRespFromJson(json);
  //     if (errorResp == null) {
  //       return ["", "Unknown Error"];
  //     } else {
  //       return ["", errorResp.error];
  //     }
  //   }
  // }

  static Future<List> login({String email, String password,String deviceId}) async {
      // var response = await client.post('$_baseURL/auth/login',
    var params =  {
      "email":"general@sqgc.com",
      "password":"3",
      "device_id":""
    };
    var response = await client.post(Uri.parse('$_baseURL/Account/Login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode(params));
       // jsonEncode(<String, String>{"email": email, "password": password,"device_id":deviceId}));

    if (response.statusCode == 200) {
      var json = response.body;
      var loginRes = loginRespFromJson(json);
      // if (loginRes != null) {
      //   return [loginRes., ""];
      // } else {
      //   return ["", "Unknown Error"];
      // }
    } else {
      var json = response.body;
      var errorResp = errorRespFromJson(json);
      if (errorResp == null) {
        return ["", "Unknown Error"];
      } else {
        return ["", errorResp.error];
      }
    }
  }
}

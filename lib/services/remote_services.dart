import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sq_cafe_user_app/models/product.dart';
import 'package:sq_cafe_user_app/views/login/Model/ErrorResp.dart';
import 'package:sq_cafe_user_app/views/login/Model/LoginResp.dart';

class RemoteServices {
  static var client = http.Client();

  static var _baseURL = "http://10.12.13.164:8032/api";

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get(Uri.parse(
        '$_baseURL/Product/GetProducts'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

//login
  static Future<LoginResp> login(
      {String email, String password, String deviceId}) async {
    var params = {
      "email": email,
      "password": password,
      "device_id": ""
    };
    var response = await client.post(Uri.parse('$_baseURL/Account/Login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode(params));
    if (response.statusCode == 200) {
      var json = response.body;
      return loginRespFromJson(json);
    } else {
      var json = response.body;
      var errorResp = errorRespFromJson(json);
      if (errorResp == null) {
        return loginRespFromJson(json);
      } else {
        return loginRespFromJson(json);
      }
    }
  }

  //login
  static Future<LoginResp> productOrder(
      {String email, String password, String deviceId}) async {
    var params = {
      "email": email,
      "password": password,
      "device_id": ""
    };
    var response = await client.post(Uri.parse('$_baseURL/Account/Login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode(params));
    if (response.statusCode == 200) {
      var json = response.body;
      return loginRespFromJson(json);
    } else {
      var json = response.body;
      var errorResp = errorRespFromJson(json);
      if (errorResp == null) {
        return loginRespFromJson(json);
      } else {
        return loginRespFromJson(json);
      }
    }
  }
}

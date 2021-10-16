// To parse this JSON data, do
//
//     final loginResp = loginRespFromJson(jsonString);

import 'dart:convert';

LoginResp loginRespFromJson(String str) => LoginResp.fromJson(json.decode(str));

String loginRespToJson(LoginResp data) => json.encode(data.toJson());

class LoginResp {
  LoginResp({
    this.name,
    this.designation,
    this.user_type,
    this.isSuccess
  });

  String name;
  String designation;
  String user_type;
 bool isSuccess;

  factory LoginResp.fromJson(Map<String, dynamic> json) => LoginResp(
      name: json["name"],
      designation: json["designation"],
      user_type: json["user_type"],
      isSuccess: json["isSuccess"]


  );

  Map<String, dynamic> toJson() => {
        "name": name,
        "designation": designation,
        "user_type": user_type,
        "isSuccess": isSuccess
  };
}

import 'package:flutter/material.dart';

import 'notification_icon.dart';


class CustomColumnInsideText extends StatelessWidget {
  final notiCount;
  final title;
  final icon;
  final color;

  CustomColumnInsideText({this.notiCount,this.title, this.icon,this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Stack(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: color),
                  child:icon,
                ),
              NotificationIcon(notiCount)
              ]
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Text(
                "$title",
                style: TextStyle(fontSize: 10,color: Colors.black),
              )),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CusConInsideHorizontalRow extends StatelessWidget {
  final text;
  final container_width;
  final iconData;

  CusConInsideHorizontalRow({this.text, this.container_width, this.iconData});

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 100,
      child: Column(
        children: [
          Icon(iconData),
          Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Text(
                "$text",
                style: TextStyle(fontSize: 10),
              )),
        ],
      ),
    );
  }
}

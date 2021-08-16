import 'package:flutter/material.dart';

class CustomExpandedRow extends StatelessWidget {
  final title;
  final value;

  CustomExpandedRow({this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Text(
              "$value",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
          Text(
            "$title",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

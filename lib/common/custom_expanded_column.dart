import 'package:flutter/material.dart';

class CustomExpandedColumn extends StatelessWidget {
  final title;
  final icon;

  CustomExpandedColumn({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
        Icon(icon,size: 30,color: Colors.grey.shade900,),
          Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
              child: Text(
                "$title",
                style: TextStyle(fontSize: 10,color: Colors.black,),
              )),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final title;
  CustomAppBar({this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        Text(
          ' $title',
          style: TextStyle(fontSize: 16, color: Colors.black),
        )
      ],
    );
  }
}

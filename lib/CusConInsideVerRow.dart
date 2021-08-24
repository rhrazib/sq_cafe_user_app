import 'package:flutter/material.dart';

class CusConInsideVerRow extends StatelessWidget {
  final text;
  final width;
  final iconData;
  // final photo;
  final VoidCallback onTap;
  // PhotoHero({ Key? key, this.photo, this.onTap, this.width }) : super(key: key);
  CusConInsideVerRow({this.text, this.width, this.iconData,this.onTap});

  @override
  Widget build(BuildContext context) {
    return

      Hero(
        tag: text,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              onTap: onTap,
              child:// Image.asset(
              Container(

                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(iconData,size: 30,color: Colors.grey.shade900,),
                    Text(
                      "$text",
                      style: TextStyle(
                        fontSize: 10,color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            // fit: BoxFit.contain,
            // ),
          ),
        ),
      );

    //   Container(
    //   width: width,
    //   child: Column(
    //     children: [
    //       Icon(iconData,size: 30,color: Colors.grey.shade900,),
    //       Text(
    //         "$text",
    //         style: TextStyle(
    //           fontSize: 10,color: Colors.black,
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
import 'package:flutter/material.dart';
import 'package:sq_cafe_user_app/rnd/voucher/Voucher.dart';
import 'common_propertise.dart';
import 'custom_expanded_row.dart';
import 'package:flutter/cupertino.dart';


class CustomProfileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 180,
      flexibleSpace: Container(
        decoration: gradiantBox,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  'assets/instragram.jpeg',
                  width: 70.0,
                  height: 70.0,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 8, 0, 4),
                        child: Text(
                          " Rokibul Hasan",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 2),
                        ),
                      ),
                      Text(
                        " 01767584621 ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            backgroundColor: Colors.black12,
                            wordSpacing: 2),
                      ),
                    ],
                  )),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: CustomExpandedRow(
                    title: "My Wishlist",
                    value: 5,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Voucher()));
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: CustomExpandedRow(
                    title: "Followed Srores",
                    value: 5,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Voucher()));
                  },
                ),
              ),
              Expanded(
                  child: InkWell(
                    child: CustomExpandedRow(
                      title: "Vouchers",
                      value: 5,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Voucher()));
                    },
                  )),
            ],
          )
        ],
      ),
    );
  }
}

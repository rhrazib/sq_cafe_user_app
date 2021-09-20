import 'package:flutter/material.dart';
import 'package:sq_cafe_user_app/common/custom_voucher_details.dart';

class VoucherDetails extends StatelessWidget {
   var amount = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
          automaticallyImplyLeading: false, // Used for removing back button.
          backgroundColor: Colors.grey.shade50,

          title: Row(
            children: [  InkWell(
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
              Text(' Home',style: TextStyle(
                  fontSize: 16,color: Colors.black
              ),
              )
            ],
          ),
          // bottom:
        ),
        body: Container(
          margin: EdgeInsets.only(top: 8, bottom: 8),
          child: CustomVoucherDetails(amount: "$amount"),
        ));
  }
}


// class VoucherDetails extends StatefulWidget {
//   @override
//   _VoucherState createState() => _VoucherState();
// }
//
// class _VoucherState extends State<VoucherDetails> with TickerProviderStateMixin {
//   var amount = 500;
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('My Voucher'),
//           // bottom:
//         ),
//         body: Container(
//           margin: EdgeInsets.only(top: 16, bottom: 16),
//           child: CustomVoucherDetails(amount: "$amount"),
//         ));
//   }
// }

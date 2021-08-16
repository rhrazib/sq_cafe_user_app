import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';


import 'custom_expanded_column.dart';

class CustomRowMyService extends StatelessWidget {
  const CustomRowMyService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: InkWell(
            child: CustomExpandedColumn(
                title: "Messages", icon: Icons.message),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => MessagePage()));
            },
          ),
        ),
        Expanded(
          child: InkWell(
            child: CustomExpandedColumn(
                title: "My Review", icon: Icons.reviews),
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => ReviewPage()));
            },
          ),
        ),
        Expanded(
          child: InkWell(
            child: CustomExpandedColumn(
                title: "Payment Options", icon: Icons.payment),
            onTap: () {
              showToast("Not Implemented.", context: context);
            },
          ),
        ),
        Expanded(
          child: InkWell(
            child: CustomExpandedColumn(
                title: "Help", icon: Icons.help),
            onTap: () {
              showToast("Not Implemented.", context: context);
            },
          ),
        ),
      ],
    );
  }
}

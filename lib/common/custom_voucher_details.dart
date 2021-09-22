import 'package:flutter/material.dart';

import 'custom_gridview.dart';

class CustomVoucherDetails extends StatelessWidget {
  String amount;

  CustomVoucherDetails({ this.amount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CustomGridView())

      ],
    );
  }
}

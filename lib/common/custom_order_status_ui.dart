import 'package:flutter/material.dart';

class CustomOrderStateUi extends StatefulWidget {

  @override
  _CustomOrderStateUiState createState() => _CustomOrderStateUiState();
}

class _CustomOrderStateUiState extends State<CustomOrderStateUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            // color: Colors.grey,
            margin: EdgeInsets.all(16),
            child: Container(
              margin: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order 454357457435485938475",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Placed on 04 Jun 2021 16:04:04 ",
                        style: TextStyle(fontSize: 10, color: Colors.grey,fontWeight: FontWeight.bold),
                      ),
                      Text("Unpaid", style: TextStyle(fontSize: 11, color: Colors.grey))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Image.network("https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png")),
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
                              style: TextStyle(fontSize: 12, color: Colors.black,),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text("5000", style: TextStyle(fontSize: 11, color: Colors.grey)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "x 1",
                                  style: TextStyle(fontSize: 11, color: Colors.grey),
                                ),
                                Text("Cancelled",
                                    style: TextStyle(fontSize: 11, color: Colors.red,fontStyle: FontStyle.italic))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(text: "1 Item,Total:",style: TextStyle(fontSize: 11, color: Colors.grey)),
                                WidgetSpan(child: Text(' 5000',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.red))), // I've tried many widgets here
                                //TextSpan(text: textB),
                              ]))
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

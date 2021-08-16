import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  final notificationCount;

  NotificationIcon(this.notificationCount);

  @override
  Widget build(BuildContext context) {
    return
      Positioned(
          right: 0,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: new BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(6),
            ),
            constraints: BoxConstraints(
              minWidth: 12,
              minHeight: 12,
            ),
            child: Text(
              "$notificationCount",
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
              textAlign: TextAlign.center,
            ),
          ));
    //
      // Stack(
      //     children: [
      //       Container(
      //         width: 50,
      //         height: 50,
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(30), color: Colors.yellow),
      //         child:Icon(Icons.chat),
      //       ),
      //       Positioned(
      //           right: 0,
      //           child: Container(
      //             padding: EdgeInsets.all(2),
      //             decoration: new BoxDecoration(
      //               color: Colors.red,
      //               borderRadius: BorderRadius.circular(6),
      //             ),
      //             constraints: BoxConstraints(
      //               minWidth: 12,
      //               minHeight: 12,
      //             ),
      //             child: Text(
      //               "$notificationCount",
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 8,
      //               ),
      //               textAlign: TextAlign.center,
      //             ),
      //           ))
      //     ]
      // );
  }
}

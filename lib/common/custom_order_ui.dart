import 'package:flutter/material.dart';

import 'model/NotificationModel.dart';


class CustomOrderUi extends StatefulWidget {
  CustomOrderUi(this.notiModel);

  List<NotificationModel> notiModel = [];

  @override
  _CustomNotificationUiState createState() => _CustomNotificationUiState(notiModel);
}

class _CustomNotificationUiState extends State<CustomOrderUi> {
  _CustomNotificationUiState(this.notiModel);
  List<NotificationModel> notiModel = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: notiModel.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: Card(
                    elevation: 0,
                    color: Colors.green.shade50,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(),
                                    child: Image(
                                        image:
                                            AssetImage('assets/instragram.jpeg')),
                                  ),
                                ),
                                Expanded(
                                  flex: 8,
                                  child: Container(
                                      child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      notiModel.elementAt(index).notiHead,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 13),
                                    ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 0,
                            color: Colors.grey.shade50,
                            margin: const EdgeInsets.all(12),
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(),
                                      child: Image(
                                          image: AssetImage(
                                              'assets/instragram.jpeg')),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      //  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          notiModel.elementAt(index).notiBody,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 4,
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 11),
                                        ),
                                      ),
                                      // )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                onTap: (){
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => OrderDetails()));
                },
              );
            }));
  }
}

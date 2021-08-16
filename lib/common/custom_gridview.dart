import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductModel {
  int id;
  String? pName;
  String? pDetails;
  String? pRice;
  double? rating;
  String? ratingCount;
  String? pImage;

  ProductModel(this.id, this.pName, this.pDetails, this.pRice, this.rating,
      this.ratingCount, this.pImage);
}

class CustomGridView extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<CustomGridView> {
  List<ProductModel> pModel = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i=0;i<10;i++){
      pModel.add(new ProductModel(
          1,
          "Computer",
          "A computer is a machine that can store and process information. Most computers rely on a binary system that uses two variables, 0 and 1, to complete tasks such as storing data, calculating algorithms, and displaying information.",
          "5100",
          4,
          "144",
          "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
      pModel.add(new ProductModel(
          1,
          "Android",
          "Laptops combine all the input/output components and capabilities of a desktop computer, including the display screen, small speakers, a keyboard, data storage device, sometimes an optical disc drive, pointing devices (such as a touchpad or pointing stick), with an operating system, a processor and memory into a single.",
          "5003",
          5,
          "144",
          "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12.0),
        child: GridView.builder(
            itemCount: pModel.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (context, index) {
              return Card(
                      //elevation: 1,
                      color: Colors.green.shade50,
                      margin: const EdgeInsets.all(8),
                      // child: IntrinsicHeight(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //  Container(
                          //   child:
                          // Image.network(notiModel.elementAt(index).notiChildImgPath,height: 100,width: 100,)
                          Image.network(
                            "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
                            height: 70,
                            width: double.infinity,
                          ),
                          Container(
                              //  child: Align(
                              //  alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    pModel.elementAt(index).pDetails!,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 11),
                                  ),
                                  Text(r"$" ""+pModel.elementAt(index).pRice!,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red.shade900)),
                                  Row(
                                    children: [
                                      RatingBar.builder(
                                        itemSize: 9,
                                        initialRating: pModel.elementAt(index).rating!,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                       //   print(rating);
                                        },
                                      ),
                                      Text("("+pModel.elementAt(index).ratingCount!+")",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey)),
                                    ],
                                  )
                                ],
                              )
                              ),
                          //  ),
                        ],
                      ),
                      //  ),
                    );
            }));
  }
}

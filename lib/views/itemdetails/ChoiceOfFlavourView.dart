import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:get/get.dart';
import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/models/product.dart';
import 'package:sq_cafe_user_app/rnd/new%20rnd/PopularCategory.dart';
import 'package:sq_cafe_user_app/rnd/new%20rnd/UIHelper.dart';
import 'package:sq_cafe_user_app/rnd/new%20rnd/app_colors.dart';

class ChoiceOfFlavourView extends StatefulWidget {
  final categories = PopularCategory.getPopularCategories();
  final Product product;

  ChoiceOfFlavourView(this.product);

  @override
  _ChoiceOfFlavourViewState createState() => _ChoiceOfFlavourViewState(product);
}

class _ChoiceOfFlavourViewState extends State<ChoiceOfFlavourView> {
  final Product product;

  _ChoiceOfFlavourViewState(this.product);

  final cartController = Get.put(CartController());
  var tileColor = Colors.green;
  List _selectedIndexs = [];
 var someFlag=true;
  @override
  void initState() {
    if(product.productColors.length>0){
      someFlag=false;
    }
    super.initState();
  }
  int _selected = null;
  // bool _isSelected = false;
  // set isSelected(bool value) {
  //   _isSelected = value;
  //   print("set is selected to $_isSelected");
  // }
  @override
  Widget build(BuildContext context) {
    return someFlag ? Container() :  Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' Select Suger',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(' 1 Required'),
            ],
          ),



          UIHelper.verticalSpaceMedium(),
          LimitedBox(
            maxHeight: 124.0,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: product.productColors.length,
                itemBuilder: (context, index) {
                  // final _isSelected = _selectedIndexs.contains(index);
                  return InkWell(
                    onTap: () {
                      setState(() {
                        showToast(product.productColors[index].colourName,
                            context: context);
                        // if (_isSelected) {
                        //   _selectedIndexs.remove(index);
                        //   //_selectedIndexs.clear();
                        // } else {
                        //   _selectedIndexs.add(index);
                        // }
                        _selected=index;

                      });
                      product.productColors[index].colourName;
                      cartController.cartItems.forEach((element) {
                        if (element.id == product.id) {
                          // isExist = true;
                          // product.productColors[index].colourName = countItem.toInt();
                          product.suger =
                              product.productColors[index].colourName;
                        }
                      });
                    },
                    child: Container(
                        margin: const EdgeInsets.all(10.0),
                        width: 70.0,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Container(
                                height: 50.0,
                                // color: _isSelected
                                //     ? Colors.red
                                //     : Colors.grey[200],
                                color: _selected == index ? swiggyOrange  : Colors.grey[200],


                                //tileColor,
                                //color: Colors.grey[200],
                              ),
                            ),
                            Positioned(
                              top: 20.0,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/suger.jpeg",
                                    //categories[index].image,
                                    height: 40.0,
                                    width: 40.0,
                                    fit: BoxFit.cover,
                                  ),
                                  UIHelper.verticalSpaceSmall(),
                                  Text(
                                    product.productColors[index].colourName,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  );
                }),
          )
        ],
      ),
    );;


  }
}

// class ChoiceOfFlavourView extends StatelessWidget {
//   final categories = PopularCategory.getPopularCategories();
//   final Product product;
//
//   ChoiceOfFlavourView(this.product);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.topLeft,
//       margin: const EdgeInsets.only(top: 20.0),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             'Select Suger',
//             style:
//                 Theme.of(context).textTheme.headline4.copyWith(fontSize: 16.0),
//           ),
//           UIHelper.verticalSpaceMedium(),
//           LimitedBox(
//             maxHeight: 124.0,
//             child: ListView.builder(
//               shrinkWrap: true,
//               scrollDirection: Axis.horizontal,
//               itemCount: product.productColors.length,
//               itemBuilder: (context, index) => Container(
//                   margin: const EdgeInsets.all(10.0),
//                   width: 70.0,
//                   child: Stack(
//                     alignment: Alignment.topCenter,
//                     children: <Widget>[
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(5.0),
//                         child: Container(
//                           height: 50.0,
//                           color: Colors.grey[200],
//                         ),
//                       ),
//                       Positioned(
//                         top: 20.0,
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: <Widget>[
//                             Image.asset(
//                               "assets/images/suger.jpeg",
//                               //categories[index].image,
//                               height: 40.0,
//                               width: 40.0,
//                               fit: BoxFit.cover,
//                             ),
//                             UIHelper.verticalSpaceSmall(),
//                             Text(
//                               product.productColors[index].colourName,
//                               maxLines: 2,
//                               textAlign: TextAlign.center,
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   )),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../SearchTest.dart';

class SearchBarWidget extends StatelessWidget {

  final ValueChanged onClickFilter;

  const SearchBarWidget({Key key, this.onClickFilter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController inputController = new TextEditingController();

    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                                  return AdvancedSearch(inputController.text);
                                },));
       // Navigator.of(context).push(SearchModal());
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2.0)),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 0),
              child: Icon(Icons.search, color:  Colors.grey),
            ),
            Expanded(
              child: Text(
                'Search in sookh',
                maxLines: 1,
                style: Get.textTheme.subtitle1.copyWith(color: Colors.grey,fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(width: 8),
            // InkWell(
            //   onTap: () {
            //     onClickFilter('e');
            //   },
            //   child: Container(
            //     padding: const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.all(Radius.circular(5)),
            //       color: Theme.of(context).focusColor.withOpacity(0.1),
            //     ),
            //     child: Wrap(
            //       crossAxisAlignment: WrapCrossAlignment.center,
            //       spacing: 4,
            //       children: [
            //         Text(
            //           S.of(context).filter,
            //           style: TextStyle(color: Theme.of(context).hintColor),
            //         ),
            //         Icon(
            //           Icons.filter_list,
            //           color: Theme.of(context).hintColor,
            //           size: 21,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

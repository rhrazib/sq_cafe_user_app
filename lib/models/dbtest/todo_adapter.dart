import 'package:hive/hive.dart';

import '../product.dart';

part 'todo_adapter.g.dart';

@HiveType(typeId: 1)
class Todo {
  @HiveField(0)
  String deliveryInstruction;
  @HiveField(1)
  String dateTime;
  @HiveField(2)
  String orderId;
  @HiveField(3)
  List<Product> cartItems;
  @HiveField(4)
  String allPrice;
  @HiveField(5)
  String odrid="";
  Todo({this.deliveryInstruction, this.dateTime,this.orderId,this.cartItems,this.allPrice,this.odrid});
}

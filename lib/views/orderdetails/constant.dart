import 'package:hive/hive.dart';
import 'package:sq_cafe_user_app/models/order_product.dart';

class Constant {

 static Box<OrderProduct> noteBox = Hive.box('notes');
 static List<OrderProduct> orderItems=[];
 static String singleValue = "Personal";
 static bool isFirstScreen=false;
 static String name = "";
//  Constant(this.noteBox);
}
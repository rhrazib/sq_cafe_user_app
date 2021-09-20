import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sq_cafe_user_app/controllers/cart_controller.dart';
import 'package:sq_cafe_user_app/controllers/order_controller.dart';
import 'package:sq_cafe_user_app/controllers/product_controller.dart';
import 'package:path_provider/path_provider.dart';

import 'Home Page.dart';
import 'Login Page.dart';
import 'common/custom_voucher_details.dart';
import 'models/dbtest/todo_adapter.dart';
import 'models/order_adapter.dart';
import 'models/order_product.dart';
import 'models/product_adapter.g.dart';
import 'rnd/voucher/Voucher.dart';
import 'rnd/voucher/VoucherDetails.dart';

Future<void>main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentsDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentsDirectory.path);
  Hive.registerAdapter(ProductAdapter());
  Hive.registerAdapter(TodoAdapter());
Hive.openBox<Todo>('todos');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isFirstScreen = false;
  @override
  void initState() {
    super.initState();
    checkFirstScreen();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VoucherDetails()//CustomVoucherDetails()  //!isFirstScreen ? LoginPage() : CustomVoucherDetails(),
// LoginPage(title: 'Flutter Demo Home Page'),
    );
  }
  Future<void> checkFirstScreen() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    //if First statement is Null Or NO Value is returning then it will give us Second Value
    bool seen = (pref.getBool('seen') ?? false);
    if (seen) {
      setState(() {
        isFirstScreen = true;
      });
    } else {
      setState(() {
        isFirstScreen = false;
      });
    }
  }
}



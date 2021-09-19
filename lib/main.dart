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
import 'models/dbtest/todo_adapter.dart';
import 'models/order_adapter.dart';
import 'models/order_product.dart';
import 'models/product_adapter.g.dart';
import 'rnd/voucher/Voucher.dart';

Future<void>main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // await Hive.openBox<Todo>('todos');
  // Hive.registerAdapter(ProductAdapter());
  // Hive.registerAdapter(TodoAdapter());
  //WidgetsFlutterBinding.ensureInitialized();
  final appDocumentsDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentsDirectory.path);
  Hive.registerAdapter(ProductAdapter());
  Hive.registerAdapter(TodoAdapter());
Hive.openBox<Todo>('todos');
//  Future _openBoxes() async {
 //   // await Hive.initFlutter();
 //    await Hive.openBox<Todo>('todos');
 //
 //
 //    //    return Future.wait([
 // // Hive.openBox<Todo>('todos')
 // //
 // //    ]);
 //  }
//   await GetStorage.init();
//
//   WidgetsFlutterBinding.ensureInitialized();
//
//   Hive.init((await getApplicationDocumentsDirectory()).path);
// //  Hive.initFlutter((await getApplicationDocumentsDirectory()).path);
//
//   Hive.registerAdapter<OrderProduct>(NoteAdapter());
//   await Future.wait([Hive.openBox<OrderProduct>('notes')]);
//   Future _openBox() async {
//     WidgetsFlutterBinding.ensureInitialized();
//     await Hive.initFlutter();
//     //if (Hive.isAdapterRegistered(0) == false) {
//     Hive.registerAdapter(ProductAdapter());
//     Hive.registerAdapter(TodoAdapter());
//       await Hive.openBox<Todo>('todos');
//    // }
//   }


  //}
  //_openBox();
  // if (Hive.isBoxOpen('todos') == false) {
  //   print('already close');
   //await Hive.openBox<Todo>('todos');
  // //  _openBoxes();
  // }
 // _openBoxes();




  // try{
  // await Hive.initFlutter();
  // await Hive.openBox<Todo>('todos');
  // Hive.registerAdapter(ProductAdapter());
  // Hive.registerAdapter(TodoAdapter());}
  // catch(error){
  //   error.toString();
  //   print(error.runTimeType);
  //
  // }
  //await _openBoxes();

  // await Hive.openBox<OrderProduct>('todos');
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
      home:   !isFirstScreen ? LoginPage() : HomePage(),
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


// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: LoginPage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }



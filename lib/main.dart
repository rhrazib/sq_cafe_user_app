import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:path_provider/path_provider.dart';

import 'Home Page.dart';
import 'Login Page.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Directory appDocumentsDirectory = await getApplicationDocumentsDirectory();


 // var hiveDb = Directory('${appDocumentsDirectory.path}/chosenPath');

// Delete the Hive directory and all its files
  ///hiveDb.delete(recursive: true);

  // Hive.init(appDocumentsDirectory.path);
  // Hive.registerAdapter(ProductAdapter());
  // Hive.registerAdapter(TodoAdapter());
  // var db = await Hive.openBox<Todo>('todos');
  // var box = Hive.box<Todo>('todos');//.deleteFromDisk();
  //
  // box.clear();


  String deviceId = await _getId();

  //await Hive.openBox<Todo>('todos');
 // Hive.box('todos').clear();

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

// Future<String> _getId() async {
//   DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
//   if (Theme.of(context).platform == TargetPlatform.iOS) {
//     IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
//     return iosDeviceInfo.identifierForVendor; // unique ID on iOS
//   } else {
//     AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
//     return androidDeviceInfo.androidId; // unique ID on Android
//   }
// }
Future<String> _getId() async {
  var deviceInfo = DeviceInfoPlugin();
  if (Platform.isIOS) { // import 'dart:io'
    var iosDeviceInfo = await deviceInfo.iosInfo;
    return iosDeviceInfo.identifierForVendor; // unique ID on iOS
  } else {
    var androidDeviceInfo = await deviceInfo.androidInfo;
    return androidDeviceInfo.androidId; // unique ID on Android
  }
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
   // checkFirstScreen();
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
  // Future<void> checkFirstScreen() async {
  // //  SharedPreferences pref = await SharedPreferences.getInstance();
  //   //if First statement is Null Or NO Value is returning then it will give us Second Value
  //   bool seen = (pref.getBool('seen') ?? false);
  //   if (seen) {
  //     setState(() {
  //       isFirstScreen = true;
  //     });
  //   } else {
  //     setState(() {
  //       isFirstScreen = false;
  //     });
  //   }
  // }



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



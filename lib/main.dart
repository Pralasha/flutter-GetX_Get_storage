import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:my_app/common/routes.dart';
import 'package:my_app/controllers/cart_controller.dart';
//import 'package:my_app/views/first_page.dart';

Future<void> main() async {
  await GetStorage.init();
  Get.lazyPut<CartController>(() => CartController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'flutter2 Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: FirstPage(),
      initialRoute: RouteClass.home,
      getPages: RouteClass.routes,
    );
  }
}

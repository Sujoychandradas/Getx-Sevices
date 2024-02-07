import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_service_vs_controller/firstpage.dart';
import 'package:getx_service_vs_controller/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/firstpage',
      getPages: [
        GetPage(
          name: '/firstpage',
          page: () => const FirstPage(),
        ),
        GetPage(
          name: '/secondpage',
          page: () => const SecondPage(),
        ),
      ],
    );
  }
}

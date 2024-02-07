import 'package:flutter/material.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getex_binding/allbindings.dart';
import 'package:getex_binding/page1view.dart';
import 'package:getex_binding/page2view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //   home: Scaffold(
      // appBar: AppBar(
      //   title: const Text('Getx Bindings'),

      //   ),
      //   )
      initialBinding: AllBindings(),
      initialRoute: '/page1',
      getPages: [
        GetPage(name: '/page1', page: () => const Page1View()),
        GetPage(name: '/page2', page: () => const Page2View())
      ],
    );
  }
}

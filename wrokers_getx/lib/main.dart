import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:wrokers_getx/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
    );
  }
}

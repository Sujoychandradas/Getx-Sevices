import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:localization_getx/languageView.dart';
import 'package:localization_getx/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Strings(),
      locale: Locale('en_US'),
      fallbackLocale: Locale('en_US'),
      home: LanguageView(),
    );
  }
}

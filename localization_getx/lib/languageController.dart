import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  changeLocale(String languageCode, String countryCode) {
    var local = Locale(languageCode, countryCode);
    Get.updateLocale(local);
  }
}

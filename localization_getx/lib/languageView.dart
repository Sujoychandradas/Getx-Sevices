import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/utils.dart';
import 'package:localization_getx/languageController.dart';

class LanguageView extends StatelessWidget {
  // const LanguageView({super.key});
  var controller = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Localization with GetX'.tr),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'How are you?'.tr,
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.changeLocale('bn', 'BD');
                  },
                  child: Text('Bangla'.tr)),
              ElevatedButton(
                  onPressed: () {
                    controller.changeLocale('en', 'US');
                  },
                  child: Text('English'.tr)),
              ElevatedButton(
                  onPressed: () {
                    controller.changeLocale('hi', 'IN');
                  },
                  child: Text('Hindi'.tr)),
            ]),
      ),
    );
  }
}

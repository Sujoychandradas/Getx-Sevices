import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex_binding/page1controller.dart';
import 'package:getex_binding/page2controller.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Page1Controller());
    Get.lazyPut(() => Page2Controller());
  }
}

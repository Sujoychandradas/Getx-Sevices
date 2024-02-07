import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxService {
  final count = 0.obs;

  increment() => count.value++;

  @override
  void onInit() {
    CircularProgressIndicator();
    super.onInit();
    print('MyController is initialized');
  }

  @override
  void onReady() {
    super.onReady();
    print('MyController is ready');
  }

  @override
  void onClose() {
    super.onClose();
    print('MyController is closed');
  }
}

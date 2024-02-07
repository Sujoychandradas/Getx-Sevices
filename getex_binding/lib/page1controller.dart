import 'package:get/get.dart';

class Page1Controller extends GetxController {
  var pagename = 'Page 1';
  final count = 0.obs;
  increment() => count.value++;
}

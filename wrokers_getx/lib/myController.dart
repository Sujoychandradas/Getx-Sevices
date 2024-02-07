import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  increment() {
    count++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    //called every time when value changes
    // ever(count, (callback) => print("Value has changed"));

    //called every time when value changes in list
    // everAll([count], (callback) => print("Value has changed"));

    //called only once when value changes
    // once(count, (callback) => print("Value has changed"));

    //called every time when value changes with delay or duration
    debounce(
      count,
      (callback) => print("Value has changed"),
      time: const Duration(seconds: 1),
    );

    super.onInit();
  }
}

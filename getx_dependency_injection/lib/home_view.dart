import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_injection/mycontroller.dart';

class HomeView extends StatelessWidget {
  // const HomeView({super.key});
  //it creats instance and allocate memory for it //and no need for dispose when i switch to another screen

  //permanent = false
  //tag = 'instance1'
  // var a = Get.put(MyController());
  // var b = Get.put(MyController());

  //it won't create instance and allocate memory until unless we use this instance
  //fenix = false
  // var c = Get.lazyPut(() => MyController());

  var d = Get.create(() => MyController());
  //it will create different instance every time

  // var e = Get.putAsync(() async => MyController());
  // //it will create instance in background thread

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Dependency Injection'),
        shadowColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              // child: Obx(() => Text(
              //       // 'The value is ${a.count}',
              //       'Hello',
              //       style: const TextStyle(fontSize: 25),
              //     )),
              child: Text('text')),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // a.increment();
                // print(a.hashCode);
                // print(b.hashCode);
                var d = Get.find<MyController>();
                print(d.hashCode);
              },
              child: const Text('Increment'),
            ),
          ),
        ],
      ),
    );
  }
}

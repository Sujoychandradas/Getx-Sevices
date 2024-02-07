import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:wrokers_getx/myController.dart';

class Home extends StatelessWidget {
  // const Home({super.key});

  MyController myController = Get.put(MyController());

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Workers'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Obx(() => Text("${myController.count}")),
          ElevatedButton(
              onPressed: () {
                myController.increment();
              },
              child: const Text('Increment'))
        ]),
      ),
    );
  }
}

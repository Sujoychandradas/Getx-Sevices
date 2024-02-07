import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getx_service_vs_controller/myContorller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Service vs Controller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Second Page'),
            ElevatedButton(
              onPressed: () {
                Get.back(
                    // result: 'This is from Second Page',
                    );
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

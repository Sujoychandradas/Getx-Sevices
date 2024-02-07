import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getex_binding/page1controller.dart';

class Page1View extends StatelessWidget {
  const Page1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Get.find<Page1Controller>().pagename,
              style: TextStyle(fontSize: 36),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/page2');
                Get.toNamed('/page2');
              },
              child: const Text('Go to Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp(this.count,{Key? key}): super(key: key);
  var count = 0.obs;
  // final count = RxInt(0);

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Obx example'),
        ),
        body: Center(
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text("$count")),
                ElevatedButton(
                    onPressed: () {
                      count++;
                    },
                    child: Text('Press Me'))
              ]),
        ),
      ),
    );
  }
}

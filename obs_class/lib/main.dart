import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/route_manager.dart';
import 'package:obs_class/movie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  // var movie = Movie();
  var movie = Movie(moviename: "Pathan", ticketprice: 500).obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Class Observable Or Reactive'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${movie.value.moviename}')),
            ElevatedButton(
                onPressed: () {
                  movie.value.moviename = 'RAONE';
                  movie.refresh();
                  print(movie.value.moviename);
                },
                child: Text('change movie name')),
          ],
        )),
      ),
    );
  }
}

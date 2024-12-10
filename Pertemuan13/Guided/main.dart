import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guided/view/detail_page.dart';
import 'package:guided/view/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => MyHomePage(title: 'Belajar GetX')),
        GetPage(name: "/detail", page: () => DetailPage()),
      ],
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/add_note_pages.dart';
import 'view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Catatan Sederhana',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/add-note', page: () => AddNotePage()),
      ],
    );
  }
}

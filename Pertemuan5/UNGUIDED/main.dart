import 'package:flutter/material.dart';
import 'package:tp_04/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 248, 227, 0)),
        useMaterial3: true,
        fontFamily: 'Arial',
      ),
      home: listviewscreen(),
    );
  }
}

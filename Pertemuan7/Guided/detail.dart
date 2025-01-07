import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  DetailProduct({super.key, required this.data});

  final Widget data ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Product'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: data,
      );
  }
}
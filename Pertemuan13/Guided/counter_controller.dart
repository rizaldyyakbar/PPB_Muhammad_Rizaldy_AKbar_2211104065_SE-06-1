import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;
  void incrementCounter() {
    counter++;
  }

  void decrementCounter() {
    counter--;
  }

  void snackBar() {
    Get.snackbar("Ini Judul", "Ini Message",
        duration: const Duration(seconds: 3));
  }

  void bottomSheet() {
    Get.bottomSheet(
      Container(
        height: 200,
        color: Colors.green,
        child: Center(
          child: Text("Ini Bottom Sheet"),
        ),
      ),
    );
  }
}

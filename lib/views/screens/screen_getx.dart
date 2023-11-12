import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_mp/controller/data_controller.dart';

class ScreenGetx extends StatelessWidget {
  // Rx<Data> obj = Data(number: 15,value: false).obs;


  DataClass controller = Get.put(DataClass());

  @override
  Widget build(BuildContext context) {

    print("Hy");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(() {
              print("Hello");
              return Text("${controller.count.value}");
            }),
            ElevatedButton(
              onPressed: () {
                controller.incr();
              },
              child: Text("Press to increment"),
            ),
            Obx(() {
              print("Hello 2");
              return Switch(
                value: controller.switchValue.value,
                onChanged: (abc) {
                  controller.switchValue.value = abc;
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
